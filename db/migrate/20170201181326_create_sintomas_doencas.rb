class CreateSintomasDoencas < ActiveRecord::Migration
  def change
    create_table :sintomas_doencas do |t|
      t.references :sintoma, :doenca
      t.timestamps
    end
  end
end
