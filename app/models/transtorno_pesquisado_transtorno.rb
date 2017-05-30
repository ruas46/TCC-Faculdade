class TranstornoPesquisadoTranstorno < ActiveRecord::Base
  belongs_to :transtornos_pesquisado
  belongs_to :transtorno
end
