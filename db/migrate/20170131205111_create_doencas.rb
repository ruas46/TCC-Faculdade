class CreateDoencas < ActiveRecord::Migration
  def change
    create_table :doencas do |t|
      t.string :nome
      t.integer :min_qtd_sint
      t.integer :pagina
      t.integer :categorium_id
      t.timestamps
    end
  end
end
