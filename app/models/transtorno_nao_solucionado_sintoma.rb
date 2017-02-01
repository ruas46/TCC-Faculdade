class TranstornoNaoSolucionadoSintoma < ActiveRecord::Base
  belongs_to :transtornos_nao_solucionado
  belongs_to :sintoma
end
