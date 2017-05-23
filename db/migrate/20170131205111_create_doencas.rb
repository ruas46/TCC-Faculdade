class CreateDoencas < ActiveRecord::Migration
  def change
    create_table :doencas do |t|
      t.string :nome
      t.integer :min_qtd_sint
      t.integer :pagina
      t.belongs_to :categorium, index: { unique: true }, foreign_key: true
      t.timestamps
    end
  end
end
