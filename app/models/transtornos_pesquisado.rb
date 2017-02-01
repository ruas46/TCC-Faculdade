class TranstornosPesquisado < ActiveRecord::Base
  has_many :transtorno_pesquisado_doenca
  has_many :doenca, through: :transtorno_pesquisado_doenca
end
