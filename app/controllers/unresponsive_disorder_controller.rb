class UnresponsiveDisorderController < ApplicationController
  skip_before_filter :verify_authenticity_token
  @@acess = 'eyJpc3MiOiJzY290Y2guaW8iLCJleHAiOjEzMDA4MTkzODAsIm5hbWUiOiJDaHJpcyBTZXZpbGxlamEiLCJhZG1pbiI6dHJ1ZX0'
  def index
    @acess = @@acess
    @transtornosNaoSolucionado = TranstornosNaoSolucionado.all
  end
  def show
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
  end
  def delete
    @acess = @@acess
    @transtornosNaoSolucionado = TranstornosNaoSolucionado.find(params[:id])
    @transtornosNaoSolucionadoSintomas = @transtornosNaoSolucionado.transtorno_nao_solucionado_sintoma.where(transtornos_nao_solucionado_id: @transtornosNaoSolucionado.id)
    @transtornosNaoSolucionadoSintomas.delete_all#deleta na tabela relacional de não solucionado
    @transtornosNaoSolucionado.destroy#deleta na tabela não solucionado
    redirect_to '/'+@@acess+'/transtornoNaoSolucionado'
  end
end
