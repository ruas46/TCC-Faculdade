class WelcomeController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def index
    @SintomasCad = Sintoma.order :nome
    @SintomasQTD = Sintoma.last.id#uso o ultimo id do banco, pq se usar qtd e deletar um sintoma do meio, buga o filtro
  end

  def info
    @transtornosNomes = Transtorno.order :nome
  end

  def create
    sintomasPesquisados = []
    transtornosParaDeletar = []
    @@pesquisaTranstorno = []
    @@pesquisaSintoma = []
    @@sintomasPesquisadosOrganizado = []
    @@transtornoPelomenosUmSintoma = []
    #valida pesquisa nula e dureciona pra search sem anda para mostrar "nenhum transtorno encontrado"
    if params[:id].nil?
      redirect_to '/pesquisa'
    else
      #para caso envie dois ids iguais
      params[:id].uniq!
      ###########################################################################
      #Motor de pesquisa do site
      #pesquisa relações id_sintomas
      params[:id].each do |id_parm|
        #to_a para tirar ActiveRecord::Relation
        sintomasPesquisados << SintomasTranstorno.where(sintoma_id: id_parm).to_a
      end

      sintomasPesquisados.each do |s|
        s.each do |f|
          #Pesquisa transtornos com esses sintomas
          #varrendo o array para achar a transtorno pelo id
          @@pesquisaTranstorno << Transtorno.find(f.transtorno_id)
          #manipula sintomasPesquisados para deixar só o id dos sintomas em um array simples
          @@sintomasPesquisadosOrganizado << f.sintoma_id
        end
      end

      #Deleta transtornos iguais encontradas
      @@pesquisaTranstorno.uniq!

      #cria array com [ID_TRANSTORNO[SINTOMAS]]
      @@pesquisaTranstorno.each do |s|
          auxArray = []
          auxArray2 = []
          auxArray << SintomasTranstorno.where(transtorno_id: s.id).to_a#procura Transtorno
          auxArray.each do |j|
            j.each do |y|
              auxArray2 << Sintoma.find(y.sintoma_id)#procura sintomas da Transtorno
            end
          end
          @@pesquisaSintoma << [s.id, auxArray2]#armazena [ID_TRANSTORNO[SINTOMAS]]
      end

      #verifica se sintomas pesquisados atendem o minimo do transtorno
      #deleta o transtorno do array se não tiver qtd minima de sintomas exigida
      @@pesquisaTranstorno.each do |pD|
        contS = 0
        #conta quantos sintomas pesquisados aquele transtorno tem
        sintomasPesquisados.each do |x|
          x.each do |y|
            if (pD.id == y.transtorno_id)
              contS+=1
            end
          end
        end
        #se n atender ao minimo de sintomas, adiciona o transtorno no array para ser deletado
        if (pD.min_qtd_sint > contS)
          transtornosParaDeletar << pD
        end
      end
      #deleta as transtornos que não atende a QTD min de sintomas
      transtornosParaDeletar.each do |dPD|
        @@transtornoPelomenosUmSintoma << dPD
        @@pesquisaTranstorno.delete_at(@@pesquisaTranstorno.index(dPD))
      end

      #validar sintomas obrigatórios
      #passa o array para um auxiliar para poder fazer o each corretamente
      pesquisaTranstornoAUX = @@pesquisaTranstorno
      @@pesquisaSintoma.each do |x, y|
        pesquisaTranstornoAUX.each do |pD|
          if pD.id == x
            #pega o array de dentro referente a o transtorno e faz um each nos seus sintomas
            y.each do |j|
              if pesquisaTranstornoAUX.index(pD) != nil
                #se o sintoma foi obrigatorio entra no if
                if j.sintoma_obrigatorio
                  #se esse sintoma foi pesquisado entra no if, se não deleta a transtorno do array
                  if @@sintomasPesquisadosOrganizado.grep(j.id) != []
                  else
                    @@transtornoPelomenosUmSintoma << pD
                    @@pesquisaTranstorno.delete_at(pesquisaTranstornoAUX.index(pD))
                  end
                end
              end
            end
          end
        end
      end

      ############################################################################
      #Registrar no banco informações sobre as pesquisas feitas
      #salvar cada pesquisa feita na tabela de pesquisas
      if @@pesquisaTranstorno != []#verifica se tem pesquisa feita
        #TranstornosPesquisado (só dar um new sempre e associar)
        t = TranstornosPesquisado.new
        t.save
        @@pesquisaTranstorno.each do |pD|
          pD.transtorno_pesquisado_transtorno.create(transtornos_pesquisado: t)
          #TranstornoPesquisadoTranstorno (tabela de união)
        end

      #Se @@pesquisaTranstorno n tem algo, salvar a consulta na tabela de não resolvidos
      else
        t = TranstornosNaoSolucionado.new
        t.save
        sintomasPesquisados.each do |sP|
          sP.each do |x|
            s = Sintoma.find(x.sintoma_id)
            s.transtorno_nao_solucionado_sintoma.create(transtornos_nao_solucionado: t)
          end
        end
      end
      #
      redirect_to '/pesquisa'
    end
  end

  def search
    #valida se @@pesquisaTranstorno tem algo, se n redireciona para home(caso acessem /search direto)
    if (defined?(@@pesquisaTranstorno)).nil?
      redirect_to '/'
    else
      @sintomasPesquisadosOrganizado = @@sintomasPesquisadosOrganizado
      @pesquisaTranstorno = @@pesquisaTranstorno
      @pesquisaSintoma = @@pesquisaSintoma
      @transtornoPelomenosUmSintoma = @@transtornoPelomenosUmSintoma
    end
  end

  def graphics
  end

  def external_base
    #mineração AQUI
    @arrayAnosGraficos1 = []
    auxEstudo = []
    @estudos1  = Hash.new(0)
    @grafico1 = Grafico.where(grafico_id:1).order("ano").to_a
    @grafico1.each do |x|
      @arrayAnosGraficos1 << x.ano
      auxEstudo << x.estudo#pega todos os estudos
    end
    @arrayAnosGraficos1.uniq!#remove os iguais
    auxEstudo.uniq!
    @estudos1[auxEstudo[0]] = "red"
    @estudos1[auxEstudo[1]] = "blue"
    @estudos1[auxEstudo[2]] = "green"

    #debug
    puts "external_base<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
    puts "@arrayAnosGraficos1: #{@arrayAnosGraficos1}"
    @grafico1.each do |x|
      puts "G_ID:#{x.grafico_id},Estudo:#{x.estudo},Ano:#{x.ano},%:#{x.porcentagem},Entrevistados:#{x.qtd_entrevistados}"
    end
  end

  def dsm
    transtornosPD = TranstornoPesquisadoTranstorno.all
    transtornos = []
    sintomas = []
    sintomasHash = Hash.new(0)
    @sintomasHashNome = Hash.new(0)
    transtornosHash = Hash.new(0)
    @transtornosHashNome = Hash.new(0)

    ############################################################################
    #TRANSTORNOS
    #cria um array com os transtornos id
    transtornosPD.each do |x|
        transtornos << x.transtorno_id
    end
    #cria um hash com [transtorno_id,qtd_repetida]
    transtornos.each do |x|
      transtornosHash[x] += 1
    end
    #ordena o hash pelo transtorno_id que mais aparece
    transtornosHash = transtornosHash.sort_by{|k, v| v}.reverse
    #Cria um novo hash com [nomeDaTranstorno,qtd_repetida]
    transtornosHash.each do |x, y|
      @transtornosHashNome[Transtorno.find(x).nome] = y*100/transtornosPD.count#calculo da %
    end

    ############################################################################
    #SINTOMAS
    #pesquisa na tabela que relaciona Sintomas com Transtornos os sintoma_id
    transtornos.each do |t|
      SintomasTranstorno.where(transtorno_id: t).to_a.each do |s|
        sintomas << s.sintoma_id
      end
    end
    #cria um hash com [sintoma_id,qtd_repetida]
    sintomas.each do |x|
      sintomasHash[x] += 1
    end
    #ordena o hash pelo sintoma_id que mais aparece
    sintomasHash = sintomasHash.sort_by{|k, v| v}.reverse
    #Cria um novo hash com [nomeDoSintoma,qtd_repetida]
    sintomasHash.each do |x, y|
      @sintomasHashNome[Sintoma.find(x).nome] = y*100/sintomas.count#calculo da %
    end

    ############################################################################
    #ASSOCIAÇÕES
    transtornoPesquisadoTop10 = Hash.new(0)
    transtornosAssociados = Hash.new(0)
    c = 0
    puts "DSM<<<<<<<<<"
    transtornosPD.each do |x|
      puts "#{x.transtornos_pesquisado_id}:#{x.transtorno_id}"
    end
    puts "transtornosHash"


    #Cria hash com ID transtorno pesquisado e ID transtorno das pesquisas feitas com transtornos do top 10
    transtornosHash.first(10).each do |x,y|
      transtornosPD.where(transtorno_id: x).each do |tpd|
        c += 1
        transtornoPesquisadoTop10[c] = tpd.transtornos_pesquisado_id,tpd.transtorno_id
      end
    end

    #transtornosAssociados => [id_transtorno] = id_associado, qtd vezes apareceu
    transtornoPesquisadoTop10.each do |ind,id_pes,id_tra|
      puts "#{ind}:#{id_pes}:#{id_tra}"

    end



  end

  def admin
  end
end
