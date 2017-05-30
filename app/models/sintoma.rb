class Sintoma < ActiveRecord::Base
  has_many :sintomas_transtorno
  has_many :transtorno, through: :sintomas_transtorno

  has_many :transtorno_nao_solucionado_sintoma
  has_many :transtornos_nao_solucionado, through: :transtorno_nao_solucionado_sintoma

end
