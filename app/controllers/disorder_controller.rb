class DisorderController < ApplicationController
  skip_before_filter :verify_authenticity_token
  @@acess = 'admin'
  def index
    if user_signed_in?
      @acess = @@acess
      @transtorno = Transtorno.order :nome
    else
      redirect_to '/users/sign_in'
    end
  end
  def new
    if user_signed_in?
      @acess = @@acess
      @categorium = Categorium.order :nome
      @sintomas = Sintoma.order :nome
    else
      redirect_to '/users/sign_in'
    end
  end
  def create
    if user_signed_in?
      @acess = @@acess
      @transtorno = Transtorno.new(nome: params[:nome],min_qtd_sint: params[:qtd],pagina: params[:pg],categorium_id: params[:c_id])
      @transtorno.save
      params[:sintomas_ids].each do |params_sintomas|
        @sintoma = Sintoma.find(params_sintomas)
        @transtorno.sintomas_transtorno.create(sintoma: @sintoma)
      end
      redirect_to '/'+@@acess
    else
      redirect_to '/users/sign_in'
    end
  end
  def show
    if user_signed_in?
      @acess = @@acess
      @transtorno = Transtorno.find(params[:id])
      @sintomas = []
      @todosSintomas = Sintoma.order :nome
      @SintomaTranstorno = SintomasTranstorno.where(transtorno_id: params[:id])
      @SintomaTranstorno.each do |s|
        @sintomas << Sintoma.find(s.sintoma_id)
      end
      @sintomas.uniq!
    else
      redirect_to '/users/sign_in'
    end
  end
  def edit
    if user_signed_in?
      @acess = @@acess
      @transtorno = Transtorno.find(params[:id])#puxa do banco as infos para alimentar o edit no front
      @categorium = Categorium.all
    else
      redirect_to '/users/sign_in'
    end
  end
  def update
    if user_signed_in?
      @acess = @@acess
      transtornoEdit = Transtorno.find(params[:id])#puxa no banco a linha edita e salva
      transtornoEdit.nome = params[:nome]
      transtornoEdit.min_qtd_sint = params[:qtd]
      transtornoEdit.pagina = params[:pg]
      transtornoEdit.categorium_id = params[:c_id]
      transtornoEdit.save
      redirect_to '/'+@@acess
    else
      redirect_to '/users/sign_in'
    end
  end
  def delete
    if user_signed_in?
      @acess = @@acess
      @transtorno = Transtorno.find(params[:id])
      @transtornoPesquisado = @transtorno.transtorno_pesquisado_transtorno.where(transtorno_id: @transtorno.id)
      @transtornoPesquisado.delete_all#deleta na tabela pesquisas, para não bugar os graficos
      @transtornoSintoma = @transtorno.sintomas_transtorno.where(transtorno_id: @transtorno.id)
      @transtornoSintoma.delete_all#deleta na tabela relacional
      @transtorno.destroy
      redirect_to '/'+@@acess
    else
      redirect_to '/users/sign_in'
    end
  end
  def removeSintoma
    if user_signed_in?
      sintoma = Sintoma.find(params[:sintoma_id])
      transtorno = Transtorno.find(params[:transtorno_id])
      transtornoSintoma = transtorno.sintomas_transtorno.where(sintoma_id: sintoma.id)
      transtornoSintoma.delete_all#deleta na tabela relacional
      redirect_to '/'+@@acess
    else
      redirect_to '/users/sign_in'
    end
  end
  def assSintoma
    if user_signed_in?
      @acess = @@acess
      @transtorno = Transtorno.find(params[:transtorno_id])
      params[:sintomas_ids].each do |params_sintomas|
        @sintoma = Sintoma.find(params_sintomas)
        @transtorno.sintomas_transtorno.create(sintoma: @sintoma)
      end
      redirect_to '/'+@@acess
    else
      redirect_to '/users/sign_in'
    end
  end
end
