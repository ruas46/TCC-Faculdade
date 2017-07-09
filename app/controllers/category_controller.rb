class CategoryController < ApplicationController
  skip_before_filter :verify_authenticity_token
  @@acess = 'eyJpc3MiOiJzY290Y2guaW8iLCJleHAiOjEzMDA4MTkzODAsIm5hbWUiOiJDaHJpcyBTZXZpbGxlamEiLCJhZG1pbiI6dHJ1ZX0'
  def index
    @acess = @@acess
    @categorium = Categorium.order :nome
  end
  def new
    @acess = @@acess
  end
  def create
    @acess = @@acess
    @categorium = Categorium.new(nome: params[:nome])
    @categorium.save
    redirect_to '/'+@@acess+'/categoria'
  end

  def edit
    @acess = @@acess
    @categorium = Categorium.find(params[:id])#puxa do banco as infos para alimentar o edit no front
  end
  def update
    @acess = @@acess
    categoryEdit = Categorium.find(params[:id])#puxa no banco a linha edita e salva
    categoryEdit.nome = params[:nome]
    categoryEdit.save
    redirect_to '/'+@@acess+'/categoria'
  end
  def delete
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
  end
end
