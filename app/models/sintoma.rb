class Sintoma < ActiveRecord::Base
  has_many :sintomas_doenca
  has_many :doenca, through: :sintomas_doenca
end
