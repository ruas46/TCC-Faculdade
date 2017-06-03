class CategoryController < ApplicationController
  skip_before_filter :verify_authenticity_token
  @@acess = 'eyJpc3MiOiJzY290Y2guaW8iLCJleHAiOjEzMDA4MTkzODAsIm5hbWUiOiJDaHJpcyBTZXZpbGxlamEiLCJhZG1pbiI6dHJ1ZX0'
  def index
    @acess = @@acess
    @categorium = Categorium.all
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
    @categorium = Categorium.find(params[:id])
  end
  def update
    @acess = @@acess
    categoryEdit = Categorium.find(params[:id])
    categoryEdit.nome = params[:nome]
    categoryEdit.save
    redirect_to '/'+@@acess+'/categoria'
  end
  def delete
    @acess = @@acess
    @categorium = Categorium.find(params[:id])
    @categorium.destroy
    redirect_to '/'+@@acess+'/categoria'
  end
end