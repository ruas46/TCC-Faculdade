class WelcomeController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def index
    @SintomasCad = Sintoma.order :nome
  end

  def info
  end

  def create
    @@pesquisa = []
    puts "CHEGUEI DENTRO DO CREATE <<<<<<<<<<<<<<<<<<<<<<<<<<<"
    puts params[:id]
    params[:id].each do |id|
      @@pesquisa << Sintoma.find(id)
    end
    puts "#{@@pesquisa} <<<<<<<<<<<<<<<<<<<<<<<<<<<<"
    #flash[:notice] = "TESTE"
    redirect_to '/search'
  end

  def search
    @dados = @@pesquisa
  end

  def graphics
  end

  def admin
  end
end
