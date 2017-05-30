class CreateSintomasTranstornos < ActiveRecord::Migration
  def change
    create_table :sintomas_transtornos do |t|
      t.references :sintoma, :transtorno
      t.timestamps
    end
  end
end
