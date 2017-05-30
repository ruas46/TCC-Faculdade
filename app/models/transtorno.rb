class Transtorno < ActiveRecord::Base
  has_many :sintomas_transtorno
  has_many :sintoma, through: :sintomas_transtorno
  has_one :categorium

  has_many :transtorno_pesquisado_transtorno
  has_many :transtornos_pesquisado, through: :transtorno_pesquisado_transtorno

end
