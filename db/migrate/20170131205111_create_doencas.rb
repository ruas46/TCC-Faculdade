class CreateDoencas < ActiveRecord::Migration
  def change
    create_table :doencas do |t|
      t.string :nome
      t.decimal :min_qtd_sint
      t.timestamps
    end
  end
end
