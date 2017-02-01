class TranstornosNaoSolucionado < ActiveRecord::Base
  has_many :transtorno_nao_solucionado_sintoma
  has_many :sintoma, through: :transtorno_nao_solucionado_sintoma
end
