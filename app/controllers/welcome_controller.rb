class WelcomeController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def index
    @SintomasCad = Sintoma.order :nome
  end

  def info
  end

  def create
    @@sintomasPesquisados = []
    @@pesquisaDoenca = []
    @@pesquisaSintoma = []
    params[:id].each do |id_parm|
      #to_a para tirar ActiveRecord::Relation
      @@sintomasPesquisados << SintomasDoenca.where(sintoma_id: id_parm).to_a
    end

    @@sintomasPesquisados.each do |s|#varrendo o array para achar a doença pelo id
      s.each do |f|
        @@pesquisaDoenca << Doenca.find(f.doenca_id)
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
        if ((pD.id == chave) && (pD.min_qtd_sint >= valor.count))
          @@pesquisaDoenca.delete_at(@@pesquisaDoenca.index(pD))#deleta a doença do array se não tiver qtd minima de sintomas exigida
        end
      end
    end

    #verifica os sintomas obrigatórios
    #@@sintomasPesquisados.each do |x|
    #  x.each do |sP|
    #    aux = sP.id
    #    @@pesquisaSintoma.each do |chave,valor|
    #      valor.each do |v|
    #        if sP.sintoma_id == v.id
    #          puts "ACHEI!"
    #        end
    #      end
    #    end
    #  end
    #end


    puts "@@sintomasPesquisados: #{@@sintomasPesquisados}"
    puts "@@pesquisaSintoma: #{@@pesquisaSintoma}"
    puts "@@pesquisaDoenca: #{@@pesquisaDoenca} <<<<<<<<<<<<<<<<<<<<<<<<<<<<"

    #validar no front os sintomas pesquisados para comparar no resultado
    #Deixar no @@sintomasPesquisados só o id dos sintomas em um array simples

    #ordenar resultados pelos que tem a maior quantidade de sintomas em comum

    #validar sintomas obrigatórios (falar com a bruna sobre essa parte)

    #.destroy deleta o objeto do banco

    #validar pesquisa nula
    #validar se @@sintomasPesquisados tem algo, se n redireciona para home
    #**validar se @@pesquisaDoenca tem algo, se n, salvar a consulta no banco de não resolvidos
    redirect_to '/search'
  end

  def search
    @sintomasPesquisados = @@sintomasPesquisados
    @pesquisaDoenca = @@pesquisaDoenca
    @pesquisaSintoma = @@pesquisaSintoma
  end

  def graphics
  end

  def admin
  end
end
