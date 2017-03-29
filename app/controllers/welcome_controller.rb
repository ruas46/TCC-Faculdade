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
    params[:id].each do |id_parm|
      #to_a para tirar ActiveRecord::Relation
      sintomasPesquisados << SintomasDoenca.where(sintoma_id: id_parm).to_a
    end

    sintomasPesquisados.each do |s|#varrendo o array para achar a doença pelo id
      s.each do |f|
        @@pesquisaDoenca << Doenca.find(f.doenca_id)
      end
    end



    #pesquisa sintomas da doença
    #separados por um array:
    #
    # sintomasDasDoencasEncontradas:
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
    puts "@@pesquisaSintoma: #{@@pesquisaSintoma}"
    puts "@sintomasPesquisados: #{sintomasPesquisados}"
    puts "@@pesquisaDoenca: #{@@pesquisaDoenca} <<<<<<<<<<<<<<<<<<<<<<<<<<<<"
    
    redirect_to '/search'
  end

  def search
    @pesquisaDoenca = @@pesquisaDoenca
    @pesquisaSintoma = @@pesquisaSintoma
  end

  def graphics
  end

  def admin
  end
end
