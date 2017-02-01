class TranstornoPesquisadoDoenca < ActiveRecord::Base
  belongs_to :transtornos_pesquisado
  belongs_to :doenca
end
