class SintomasDoenca < ActiveRecord::Base
  belongs_to :doenca
  belongs_to :sintoma
end
