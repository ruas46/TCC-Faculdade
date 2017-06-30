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
    @sintomas = Sintoma.order :nome
  end
  def create
    @acess = @@acess
    @transtorno = Transtorno.new(nome: params[:nome],min_qtd_sint: params[:qtd],pagina: params[:pg],categorium_id: params[:c_id])
    @transtorno.save
    params[:sintomas_ids].each do |params_sintomas|
      @sintoma = Sintoma.find(params_sintomas)
      @transtorno.sintomas_transtorno.create(sintoma: @sintoma)
    end
    redirect_to '/'+@@acess
  end
  def show
    @acess = @@acess
    @transtorno = Transtorno.find(params[:id])
    @sintomas = []
    @todosSintomas = Sintoma.order :nome
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
    @transtornoPesquisado = @transtorno.transtorno_pesquisado_transtorno.where(transtorno_id: @transtorno.id)
    @transtornoPesquisado.delete_all#deleta na tabela pesquisas, para não bugar os graficos
    @transtornoSintoma = @transtorno.sintomas_transtorno.where(transtorno_id: @transtorno.id)
    @transtornoSintoma.delete_all#deleta na tabela relacional
    @transtorno.destroy
    redirect_to '/'+@@acess
  end
  def removeSintoma
    sintoma = Sintoma.find(params[:sintoma_id])
    transtorno = Transtorno.find(params[:transtorno_id])
    transtornoSintoma = transtorno.sintomas_transtorno.where(sintoma_id: sintoma.id)
    transtornoSintoma.delete_all#deleta na tabela relacional
    redirect_to '/'+@@acess
  end
  def assSintoma
    @acess = @@acess
    @transtorno = Transtorno.find(params[:transtorno_id])
    params[:sintomas_ids].each do |params_sintomas|
      @sintoma = Sintoma.find(params_sintomas)
      @transtorno.sintomas_transtorno.create(sintoma: @sintoma)
    end
    redirect_to '/'+@@acess
  end
end
