class SymptomController < ApplicationController
  skip_before_filter :verify_authenticity_token
  @@acess = 'eyJpc3MiOiJzY290Y2guaW8iLCJleHAiOjEzMDA4MTkzODAsIm5hbWUiOiJDaHJpcyBTZXZpbGxlamEiLCJhZG1pbiI6dHJ1ZX0'
  def index
    @acess = @@acess
    @sintoma = Sintoma.order :nome
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
    @sintoma = Sintoma.find(params[:id])#puxa do banco as infos para alimentar o edit no front
  end
  def update
    @acess = @@acess
    sintomaEdit = Sintoma.find(params[:id])#puxa no banco a linha edita e salva
    sintomaEdit.nome = params[:nome]
    sintomaEdit.sintoma_obrigatorio = params[:obrigatorio]
    sintomaEdit.save
    redirect_to '/'+@@acess+'/sintoma'
  end
  def delete
    @acess = @@acess
    @sintoma = Sintoma.find(params[:id])
    @sintomaTranstorno = @sintoma.sintomas_transtorno.where(sintoma_id: @sintoma.id)
    @sintomaTranstorno.delete_all#deleta na tabela relacional dos transtornos pra n bugar graficos/busca
    @sintoma.destroy
    redirect_to '/'+@@acess+'/sintoma'
  end
end
