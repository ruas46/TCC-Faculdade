class CreateTranstornosPesquisados < ActiveRecord::Migration
  def change
    create_table :transtornos_pesquisados do |t|

      t.timestamps null: false
    end
  end
end
