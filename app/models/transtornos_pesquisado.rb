class TranstornosPesquisado < ActiveRecord::Base
  has_many :transtorno_pesquisado_transtorno
  has_many :transtorno, through: :transtorno_pesquisado_transtorno
end
