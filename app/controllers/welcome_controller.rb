class WelcomeController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def index
    @SintomasCad = Sintoma.order :nome
  end

  def info
  end

  def create
    sintomasPesquisados = []
    doencasParaDeletar = []
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
        #se n atender ao minimo de sintomas, adiciona a doença no array para ser deletado
        if (pD.min_qtd_sint > contS)
          doencasParaDeletar << pD
        end
      end
      #deleta as doenças que não atende a QTD min de sintomas
      doencasParaDeletar.each do |dPD|
        @@pesquisaDoenca.delete_at(@@pesquisaDoenca.index(dPD))
      end


      #validar sintomas obrigatórios
      @@pesquisaDoenca.each do |pD|
        @@pesquisaSintoma.each do |x, y|
          #Compara id da doença com o id da doença que tem dentro do array @@pesquisaSintoma
          if pD.id == x
            #pega o array de dentro referente a doenca e faz um each nos seus sintomas
            y.each do |j|
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
          pD.transtorno_pesquisado_doenca.create(transtornos_pesquisado: t)
          #TranstornoPesquisadoDoenca (tabela de união)
        end

      #Se @@pesquisaDoenca n tem algo, salvar a consulta na tabela de não resolvidos
      else
        t = TranstornosNaoSolucionado.new
        t.save
        sintomasPesquisados.each do |sP|
          sP.each do |x|
            s = Sintoma.find(x.id)
            s.transtorno_nao_solucionado_sintoma.create(transtornos_nao_solucionado: t)
          end
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
      puts "Tabela SintomasDoenca"
      puts "total de sintomas cadastrados com doenças: #{aux.count}"
      aux.each do |x|
        puts "doenca_id: #{x.doenca_id}  -  sintoma_id: #{x.sintoma_id}"
      end
      puts "---------------------------------------------------------------"
      aux = TranstornoPesquisadoDoenca.all
      puts "Tabela TranstornoPesquisadoDoenca"
      aux.each do |x|
        puts "transtornos_pesquisado_id: #{x.transtornos_pesquisado_id} - doenca_id: #{x.doenca_id}"
      end
      puts "---------------------------------------------------------------"
      aux = TranstornosPesquisado.all
      puts "Tabela TranstornosPesquisado"
      aux.each do |x|
        puts x
      end
      puts "---------------------------------------------------------------"
      aux = TranstornosNaoSolucionado.all
      puts "Tabela TranstornosNaoSolucionado"
      aux.each do |x|
        puts x
      end
      puts "---------------------------------------------------------------"
      aux = TranstornoNaoSolucionadoSintoma.all
      puts "Tabela TranstornoNaoSolucionadoSintoma"
      aux.each do |x|
        puts "transtornos_nao_solucionado_id: #{x.transtornos_nao_solucionado_id} - sintoma_id: #{x.sintoma_id}"
      end


      #
      redirect_to '/search'
    end
  end

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
    transtornosPD = TranstornoPesquisadoDoenca.all
    transtornos = []
    transtornosHash = Hash.new(0)
    @transtornosHashNome = Hash.new(0)

    #cria um array com os doenças id
    transtornosPD.each do |x|
        transtornos << x.doenca_id
    end

    #cria um hash com [doenca_id,qtd_repetida]
    transtornos.each do |x|
      transtornosHash[x] += 1
    end
    #ordena o hash pelo doenca_id que mais aparece
    transtornosHash = transtornosHash.sort_by{|k, v| v}.reverse
    #Cria um novo hash com [nomeDaDoença,qtd_repetida]
    transtornosHash.each do |x, y|
      @transtornosHashNome[Doenca.find(x).nome] = y
    end


    #DEBUG
    puts "<><><><><><><><><><><><><<>><><<><><>><<>><><><<>><><<><><><>><"
    @transtornosHashNome.each do |x, y|
      puts "#{x} aparece #{y} vezes"
    end
    puts "transtornosHash Ordenado: #{@transtornosHashNome}"
    puts "Primieros 5 valores: #{@transtornosHashNome.first(5)}"
    puts "Ultimos 5 valores: #{@transtornosHashNome.to_a.last(5).reverse}"
    puts "transtornos: #{transtornos}"
    puts "Valor com maior QTD do array transtornos: #{@transtornosHashNome.first(1)}"
    puts "<><><><><><><><><><><><><<>><><<><><>><<>><><><<>><><<><><><>><"

    puts "<><><><><><><><><><><><><<>><><<><><>><<>><><><<>><><<><><><>><"

#CACHE Q TA FUDENO
  end

  def admin
  end
end
