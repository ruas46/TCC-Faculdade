class WelcomeController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def index
    @SintomasCad = Sintoma.order :nome
  end

  def info
  end

  def create
    @@pesquisa = []
    @doenca = []
    params[:id].each do |id|
      @doenca << SintomasDoenca.where(sintoma_id: id)
      @@pesquisa = Doenca.find(@doenca)
    end
    puts params[:id]
    puts "CHEGUEI DENTRO DO CREATE <<<<<<<<<<<<<<<<<<<<<<<<<<<"
    puts "#{@@pesquisa} <<<<<<<<<<<<<<<<<<<<<<<<<<<<"
    puts @@pesquisa
    redirect_to '/search'
  end

  def search
    @dadosDoenca = @@pesquisa
  end

  def graphics
  end

  def admin
  end
end
