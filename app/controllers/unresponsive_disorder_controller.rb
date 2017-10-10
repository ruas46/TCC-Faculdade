class UnresponsiveDisorderController < ApplicationController
  skip_before_filter :verify_authenticity_token
  @@acess = 'admin'
  def index
    if user_signed_in?
      @acess = @@acess
      @transtornosNaoSolucionado = TranstornosNaoSolucionado.all
    else
      redirect_to '/users/sign_in'
    end
  end
  def show
    if user_signed_in?
      @acess = @@acess
      @sintomas = []
      @transtornosNaoSolucionado = TranstornosNaoSolucionado.find(params[:id])
      #buscando na tabela relacional suas relações
      @transtornosNaoSolucionadoSintomas = @transtornosNaoSolucionado.transtorno_nao_solucionado_sintoma.where(transtornos_nao_solucionado_id: @transtornosNaoSolucionado.id).to_a
      #criando um array novo com os sintomas relacionados
      @transtornosNaoSolucionadoSintomas.each do |s|
        @sintomas << Sintoma.find(s.sintoma_id)
      end
      @sintomas.uniq!
    else
      redirect_to '/users/sign_in'
    end
  end
  def delete
    if user_signed_in?
      @acess = @@acess
      @transtornosNaoSolucionado = TranstornosNaoSolucionado.find(params[:id])
      @transtornosNaoSolucionadoSintomas = @transtornosNaoSolucionado.transtorno_nao_solucionado_sintoma.where(transtornos_nao_solucionado_id: @transtornosNaoSolucionado.id)
      @transtornosNaoSolucionadoSintomas.delete_all#deleta na tabela relacional de não solucionado
      @transtornosNaoSolucionado.destroy#deleta na tabela não solucionado
      redirect_to '/'+@@acess+'/transtornoNaoSolucionado'
    else
      redirect_to '/users/sign_in'
    end
  end
end
