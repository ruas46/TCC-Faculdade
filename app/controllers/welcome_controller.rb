class WelcomeController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def index
    @SintomasCad = Sintoma.order :nome
  end

  def info
  end

  def create
    @sintomasPesq = []
    params[:id].each do |id_parm|
      @sintomasPesq << SintomasDoenca.where(sintoma_id: id_parm)
      @@pesquisaDoenca = Doenca.find(@sintomasPesq)
    end
    puts params[:id]
    puts "CHEGUEI DENTRO DO CREATE ESSE È O VALOR DE PESQUISA <<<<<<<<<<<<<<<<<<<<<<<<<<<"
    puts "@@pesquisaDoenca: #{@@pesquisaDoenca} <<<<<<<<<<<<<<<<<<<<<<<<<<<<"
    puts "@sintomasPesq: #{@@pesquisaDoenca}"
    redirect_to '/search'
  end

  def search
    @pesquisaDoenca = @@pesquisaDoenca
  end

  def graphics
  end

  def admin
  end
end
