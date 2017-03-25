class WelcomeController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def index
    @SintomasCad = Sintoma.order :nome
  end

  def info
  end

  def create
    puts "CHEGUEI DENTRO DO CREATE <<<<<<<<<<<<<<<<<<<<<<<<<<<"
    puts params[:id]
    @@pesquisa = Sintoma.find(params[:id])
    puts "#{@@pesquisa.nome} <<<<<<<<<<<<<<<<<<<<<<<<<<<<"
    #flash[:notice] = "TESTE"
    redirect_to '/search'
  end

  def search
    @dados = @@pesquisa
  end

  def welcome_params
    params.permit(:id)
  end

  def graphics
  end

  def admin
  end
end
