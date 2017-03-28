class WelcomeController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def index
    @SintomasCad = Sintoma.order :nome
  end

  def info
  end

  def create
    puts "CHEGUEI DENTRO DO CREATE <<<<<<<<<<<<<<<<<<<<<<<<<<<"
    puts "VALOR PARAMETRO: #{params[:id]}"

    sintomasPesq = []
    @@pesquisaDoenca = []
    params[:id].each do |id_parm|
      #to_a para tirar ActiveRecord::Relation
      sintomasPesq << SintomasDoenca.where(sintoma_id: id_parm).to_a
    end
    sintomasPesq.each do |s|
      s.each do |foo|
        @@pesquisaDoenca << Doenca.find(foo.doenca_id)
      end
    end
    puts "@sintomasPesq: #{sintomasPesq}"
    puts "@@pesquisaDoenca: #{@@pesquisaDoenca} <<<<<<<<<<<<<<<<<<<<<<<<<<<<"

    #sintomasPesq.where(:doenca_id => 1).scoping do
    #  aux = sintomasPesq.first
    #end
    #puts "AUX: #{aux}"

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
