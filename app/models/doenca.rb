class Doenca < ActiveRecord::Base
  has_many :sintomas_doenca
  has_many :sintoma, through: :sintomas_doenca
  has_one :categorium

  has_many :transtorno_pesquisado_doenca
  has_many :transtornos_pesquisado, through: :transtorno_pesquisado_doenca

end
