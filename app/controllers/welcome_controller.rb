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

    #valida pesquisa nula
    if params[:id].nil?
      redirect_to '/search'
    else
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
            #deleta a doença do array se estiver duplicada
            @@pesquisaDoenca.delete_at(@@pesquisaDoenca.index(s))
        end
      end

      #pesquisa sintomas da doença
      #separados por um array:
      #
      # @@pesquisaSintoma:
      # < array:
      #   <arrayDoença1
      #     <array1 sintoma1>
      #     <array2 sintoma2>
      #   <arrayDoença2
      #     <array1 sintoma1>
      #    >
      # >
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
      @@pesquisaDoenca.each do |pD|
        @@pesquisaSintoma.each do |chave,valor|
          #deleta a doença do array se não tiver qtd minima de sintomas exigida
          if ((pD.id == chave) && (pD.min_qtd_sint > valor.count))
            @@pesquisaDoenca.delete_at(@@pesquisaDoenca.index(pD))
          end
        end
      end


      #DEBUG
      puts "---------------------------------------------------------------"
      puts "@@sintomasPesquisadosOrganizado: #{@@sintomasPesquisadosOrganizado}"
      puts "sintomasPesquisados: #{sintomasPesquisados}"
      puts "@@pesquisaSintoma: #{@@pesquisaSintoma}"
      puts "@@pesquisaDoenca: #{@@pesquisaDoenca}"

      #BUG quantidade minima de sintomas HJJ passa com 1 sintoma só

      #ordenar resultados pelos que tem a maior quantidade de sintomas em comum

      #validar sintomas obrigatórios

      #salvar cada pesquisa feita na tabela de pesquisas
      #**validar se @@pesquisaDoenca tem algo, se n, salvar a consulta no banco de não resolvidos
      redirect_to '/search'
    end
  end
  #.destroy deleta o objeto do banco

  def search
    #valida se @@pesquisaDoenca tem algo, se n redireciona para home(caso acessem /search direto)
    if (defined?(@@pesquisaDoenca)).nil?#tem algo no @@pesquisaDoenca ?
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
