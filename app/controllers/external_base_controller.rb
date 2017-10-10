class ExternalBaseController < ApplicationController
  skip_before_filter :verify_authenticity_token
  @@acess = 'admin'
  def index
    if user_signed_in?
      @acess = @@acess
      @graficos = Grafico.order :grafico_id
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
      @grafico = Grafico.new(grafico_id: params[:grafico_id], porcentagem: params[:porcentagem], qtd_entrevistados: params[:qtd_entrevistados], ano: params[:ano], estudo: params[:estudo])
      @grafico.save
      redirect_to '/'+@@acess+'/graficos'
    else
      redirect_to '/users/sign_in'
    end
  end


  def edit
    if user_signed_in?
      @acess = @@acess
      @graficos = Grafico.find(params[:id])#puxa do banco as infos para alimentar o edit no front
    else
      redirect_to '/users/sign_in'
    end
  end
  def update
    if user_signed_in?
      @acess = @@acess
      graficoEdit = Grafico.find(params[:id])#puxa no banco a linha edita e salva
      graficoEdit.grafico_id = params[:grafico_id]
      graficoEdit.porcentagem = params[:porcentagem]
      graficoEdit.qtd_entrevistados = params[:qtd_entrevistados]
      graficoEdit.ano = params[:ano]
      graficoEdit.estudo = params[:estudo]
      graficoEdit.save
      redirect_to '/'+@@acess+'/graficos'
    else
      redirect_to '/users/sign_in'
    end
  end
  def delete
    if user_signed_in?
      @acess = @@acess
      @grafico = Grafico.find(params[:id])
      @grafico.destroy
      redirect_to '/'+@@acess+'/graficos'
    else
      redirect_to '/users/sign_in'
    end
  end
end
