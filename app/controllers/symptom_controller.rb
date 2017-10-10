class SymptomController < ApplicationController
  skip_before_filter :verify_authenticity_token
  @@acess = 'admin'
  def index
    if user_signed_in?
      @acess = @@acess
      @sintoma = Sintoma.order :nome
    else
      redirect_to '/users/sign_in'
    end
  end
  def new
    if user_signed_in?
      @acess = @@acess
    else
      redirect_to '/users/sign_in'
    end
  end
  def create
    if user_signed_in?
      @acess = @@acess
      @sintoma = Sintoma.new(nome: params[:nome], sintoma_obrigatorio: params[:sintomaObrigatorio])
      @sintoma.save
      redirect_to '/'+@@acess+'/sintoma'
    else
      redirect_to '/users/sign_in'
    end
  end

  def edit
    if user_signed_in?
      @acess = @@acess
      @sintoma = Sintoma.find(params[:id])#puxa do banco as infos para alimentar o edit no front
    else
      redirect_to '/users/sign_in'
    end
  end
  def update
    if user_signed_in?
      @acess = @@acess
      sintomaEdit = Sintoma.find(params[:id])#puxa no banco a linha edita e salva
      sintomaEdit.nome = params[:nome]
      sintomaEdit.sintoma_obrigatorio = params[:obrigatorio]
      sintomaEdit.save
      redirect_to '/'+@@acess+'/sintoma'
    else
      redirect_to '/users/sign_in'
    end
  end
  def delete
    if user_signed_in?
      @acess = @@acess
      @sintoma = Sintoma.find(params[:id])
      @sintomaTranstorno = @sintoma.sintomas_transtorno.where(sintoma_id: @sintoma.id)
      @sintomaTranstorno.delete_all#deleta na tabela relacional dos transtornos pra n bugar graficos/busca
      @sintoma.destroy
      redirect_to '/'+@@acess+'/sintoma'
    else
      redirect_to '/users/sign_in'
    end
  end
end
