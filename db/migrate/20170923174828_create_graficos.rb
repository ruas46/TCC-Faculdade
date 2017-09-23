class CreateGraficos < ActiveRecord::Migration
  def change
    create_table :graficos do |t|
      t.integer :grafico_id
      t.integer :porcentagem
      t.string :qtd_entrevistados
      t.integer :ano
      t.string :estudo
    end
  end
end
