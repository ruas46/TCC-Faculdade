class CreateTranstornosNaoSolucionados < ActiveRecord::Migration
  def change
    create_table :transtornos_nao_solucionados do |t|

      t.timestamps null: false
    end
  end
end
