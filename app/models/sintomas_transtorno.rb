class SintomasTranstorno < ActiveRecord::Base
  belongs_to :transtorno
  belongs_to :sintoma
end
