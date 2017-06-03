class SymptomController < ApplicationController
  skip_before_filter :verify_authenticity_token
  @@acess = 'eyJpc3MiOiJzY290Y2guaW8iLCJleHAiOjEzMDA4MTkzODAsIm5hbWUiOiJDaHJpcyBTZXZpbGxlamEiLCJhZG1pbiI6dHJ1ZX0'
  def index
    @acess = @@acess
    @sintoma = Sintoma.all
  end
  def new
    @acess = @@acess
  end
  def create
    @acess = @@acess
    @sintoma = Sintoma.new(nome: params[:nome])
    @sintoma.save
    redirect_to '/'+@@acess+'/sintoma'
  end

  def edit
    @acess = @@acess
    @sintoma = Sintoma.find(params[:id])
  end
  def update
    @acess = @@acess
    sintomaEdit = Sintoma.find(params[:id])
    sintomaEdit.nome = params[:nome]
    sintomaEdit.sintoma_obrigatorio = params[:obrigatorio]
    sintomaEdit.save
    redirect_to '/'+@@acess+'/sintoma'
  end
  def delete
    @acess = @@acess
    @sintoma = Sintoma.find(params[:id])
    @sintoma.destroy
    redirect_to '/'+@@acess+'/sintoma'
  end
end