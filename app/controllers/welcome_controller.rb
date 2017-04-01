class WelcomeController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def index
    @SintomasCad = Sintoma.order :nome
  end

  def info
  end

  def create
    sintomasPesquisados = []
    @@pesquisaDoenca = []
    @@pesquisaSintoma = []
    @@sintomasPesquisadosOrganizado = []

    #valida pesquisa nula e dureciona pra search sem anda para mostrar "nenhum transtorno encontrado"
    if params[:id].nil?
      redirect_to '/search'
    else
      ###########################################################################
      #Motor de pesquisa do site

      #pesquisa relações id_sintomas
      params[:id].each do |id_parm|
        #to_a para tirar ActiveRecord::Relation
        sintomasPesquisados << SintomasDoenca.where(sintoma_id: id_parm).to_a
      end

      sintomasPesquisados.each do |s|
        s.each do |f|
          #Pesquisa doenças com esses sintomas
          #varrendo o array para achar a doença pelo id
          @@pesquisaDoenca << Doenca.find(f.doenca_id)
          #manipula sintomasPesquisados para deixar só o id dos sintomas em um array simples
          @@sintomasPesquisadosOrganizado << f.sintoma_id
        end
      end

      #Deleta doenças iguais encontradas
      @@pesquisaDoenca.each do |s|
        if @@pesquisaDoenca.select {|e| e.id == s.id}.count > 1
          aux = @@pesquisaDoenca.select {|e| e.id == s.id}#pega todos duplicados
          aux.delete_at(aux.index(aux.first))#tira 1 do array
          #deleta o resto
          aux.each do |x|
            @@pesquisaDoenca.delete_at(@@pesquisaDoenca.index(x))
          end
        end
      end

      @@pesquisaDoenca.each do |s|
          auxArray = []
          auxArray2 = []
          auxArray << SintomasDoenca.where(doenca_id: s.id).to_a#procura Doença
          auxArray.each do |j|
            j.each do |y|
              auxArray2 << Sintoma.find(y.sintoma_id)#procura sintomas da Doença
            end
          end
          @@pesquisaSintoma << [s.id, auxArray2]#armazena [ID_DOENÇA[SINTOMAS]]
      end

      #verifica se sintomas pesquisados atendem o minimo da doença
      #deleta a doença do array se não tiver qtd minima de sintomas exigida
      @@pesquisaDoenca.each do |pD|
        contS = 0
        #conta quantos sintomas pesquisados aquela doença tem
        sintomasPesquisados.each do |x|
          x.each do |y|
            if (pD.id == y.doenca_id)
              contS+=1
            end
          end
        end
        #se n atender ao minimo de sintomas, deleta a doença do array
        if (pD.min_qtd_sint > contS)
          @@pesquisaDoenca.delete_at(@@pesquisaDoenca.index(pD))
        end
      end

      #validar sintomas obrigatórios
      @@pesquisaDoenca.each do |pD|
        @@pesquisaSintoma.each do |x, y|
          #DEBUG
          puts "pD:#{pD}  x:#{x}  y:#{y}"

          #Compara id da doença com o id da doença que tem dentro do array @@pesquisaSintoma
          if pD.id == x
            #pega o array de dentro referente a doenca e faz um each nos seus sintomas
            y.each do |j|
              #DEBUG
              puts "j.sintoma_obrigatorio: #{j.sintoma_obrigatorio}"
              puts "@@sintomasPesquisadosOrganizado.grep(j.id): #{@@sintomasPesquisadosOrganizado.grep(j.id)}"

              #se o sintoma foi obrigatorio entra no if
              if j.sintoma_obrigatorio
                #se esse sintoma foi pesquisado entra no if, se não deleta a doença do array
                if @@sintomasPesquisadosOrganizado.grep(j.id) != []
                else
                  @@pesquisaDoenca.delete_at(@@pesquisaDoenca.index(pD))
                end
              end
            end
          end
        end
      end

      ############################################################################
      #Registrar no banco informações sobre as pesquisas feitas

      #salvar cada pesquisa feita na tabela de pesquisas
      if @@pesquisaDoenca != []#verifica se tem pesquisa feita
        @@pesquisaDoenca.each do |pD|
          #TranstornosPesquisado (só dar um new sempre e associar)
          t = TranstornosPesquisado.new
          t.save
          d = pD
          d.transtorno_pesquisado_doenca.create(transtornos_pesquisado: t)
          #TranstornoPesquisadoDoenca (tabela de união)
        end
      end



      
      #DEBUG
      puts "---------------------------------------------------------------"
      puts "@@sintomasPesquisadosOrganizado: #{@@sintomasPesquisadosOrganizado}"
      puts "sintomasPesquisados: #{sintomasPesquisados}"
      puts "@@pesquisaSintoma: #{@@pesquisaSintoma}"
      puts "@@pesquisaDoenca: #{@@pesquisaDoenca}"

      puts "---------------------------------------------------------------"
      aux = SintomasDoenca.all
      puts "total de sintomas cadastrados com doenças: #{aux.count}"
      puts "Tabela SintomasDoenca"
      aux.each do |x|
        puts "doenca_id: #{x.doenca_id}  -  sintoma_id: #{x.sintoma_id}"
      end
      puts "---------------------------------------------------------------"
      puts "Tabela TranstornoPesquisadoDoenca"
      aux = TranstornoPesquisadoDoenca.all
      aux.each do |x|
        puts "transtornos_pesquisado_id: #{x.transtornos_pesquisado_id} - doenca_id: #{x.doenca_id}"
      end
      puts "---------------------------------------------------------------"
      puts "Tabela TranstornosPesquisado"
      aux = TranstornosPesquisado.all
      aux.each do |x|
        puts x
      end


      #**validar se @@pesquisaDoenca tem algo, se n, salvar a consulta no banco de não resolvidos
      redirect_to '/search'
      #ordenar resultados pelos que tem a maior quantidade de sintomas em comum (talvez)
    end
  end
  #.destroy deleta o objeto do banco

  def search
    #valida se @@pesquisaDoenca tem algo, se n redireciona para home(caso acessem /search direto)
    if (defined?(@@pesquisaDoenca)).nil?
      redirect_to '/'
    else
      @sintomasPesquisadosOrganizado = @@sintomasPesquisadosOrganizado
      @pesquisaDoenca = @@pesquisaDoenca
      @pesquisaSintoma = @@pesquisaSintoma
    end
  end

  def graphics
  end

  def admin
  end
end
