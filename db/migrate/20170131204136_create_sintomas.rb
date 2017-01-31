class CreateSintomas < ActiveRecord::Migration
  def change
    create_table :sintomas do |t|
      t.string :nome
      t.boolean :sintoma_obrigatorio
      t.timestamps
    end
  end
end
