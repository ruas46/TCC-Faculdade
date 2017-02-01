class Doenca < ActiveRecord::Base
  has_many :sintomas_doenca
  has_many :sintoma, through: :sintomas_doenca
end
