class DisorderController < ApplicationController
  skip_before_filter :verify_authenticity_token
  @@acess = 'eyJpc3MiOiJzY290Y2guaW8iLCJleHAiOjEzMDA4MTkzODAsIm5hbWUiOiJDaHJpcyBTZXZpbGxlamEiLCJhZG1pbiI6dHJ1ZX0'
  def index
    @acess = @@acess
    @transtorno = Transtorno.order :nome
  end
  def new
    @acess = @@acess
    @categorium = Categorium.order :nome
  end
  def create
    @acess = @@acess
    @transtorno = Transtorno.new(nome: params[:nome],min_qtd_sint: params[:qtd],pagina: params[:pg],categorium_id: params[:c_id])
    @transtorno.save
    redirect_to '/'+@@acess
  end
  def show
    @acess = @@acess
    @transtorno = Transtorno.find(params[:id])
    @sintomas = []
    @SintomaTranstorno = SintomasTranstorno.where(transtorno_id: params[:id])
    @SintomaTranstorno.each do |s|
      @sintomas << Sintoma.find(s.sintoma_id)
    end
    @sintomas.uniq!
  end
  def edit
    @acess = @@acess
    @transtorno = Transtorno.find(params[:id])#puxa do banco as infos para alimentar o edit no front
    @categorium = Categorium.all
  end
  def update
    @acess = @@acess
    transtornoEdit = Transtorno.find(params[:id])#puxa no banco a linha edita e salva
    transtornoEdit.nome = params[:nome]
    transtornoEdit.min_qtd_sint = params[:qtd]
    transtornoEdit.pagina = params[:pg]
    transtornoEdit.categorium_id = params[:c_id]
    transtornoEdit.save
    redirect_to '/'+@@acess
  end
  def delete
    @acess = @@acess
    @transtorno = Transtorno.find(params[:id])
    @transtorno.destroy
    redirect_to '/'+@@acess
  end
end
