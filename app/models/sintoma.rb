class Sintoma < ActiveRecord::Base
  has_many :sintomas_doenca
  has_many :doenca, through: :sintomas_doenca

  has_many :transtorno_nao_solucionado_sintoma
  has_many :transtornos_nao_solucionado, through: :transtorno_nao_solucionado_sintoma

end
