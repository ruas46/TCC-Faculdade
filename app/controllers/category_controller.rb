class CategoryController < ApplicationController
  skip_before_filter :verify_authenticity_token
  @@acess = 'admin'
  def index
    if user_signed_in?
      @acess = @@acess
      @categorium = Categorium.order :nome
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
      @categorium = Categorium.new(nome: params[:nome])
      @categorium.save
      redirect_to '/'+@@acess+'/categoria'
    else
      redirect_to '/users/sign_in'
    end
  end

  def edit
    if user_signed_in?
      @acess = @@acess
      @categorium = Categorium.find(params[:id])#puxa do banco as infos para alimentar o edit no front
    else
      redirect_to '/users/sign_in'
    end
  end
  def update
    if user_signed_in?
      @acess = @@acess
      categoryEdit = Categorium.find(params[:id])#puxa no banco a linha edita e salva
      categoryEdit.nome = params[:nome]
      categoryEdit.save
      redirect_to '/'+@@acess+'/categoria'
    else
      redirect_to '/users/sign_in'
    end
  end
  def delete
    if user_signed_in?
      @acess = @@acess
      if params[:id] == "1"
      else
        @categorium = Categorium.find(params[:id])
        @Transtornos = Transtorno.where(categorium_id: @categorium.id)
        @Transtornos.each do |t|
          t.categorium_id = "1"
          t.save
        end
        @categorium.destroy
      end
      redirect_to '/'+@@acess+'/categoria'
    else
      redirect_to '/users/sign_in'
    end
  end
end
