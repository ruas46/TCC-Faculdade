class CreateTranstornoPesquisadoTranstornos < ActiveRecord::Migration
  def change
    create_table :transtorno_pesquisado_transtornos do |t|
      t.references :transtornos_pesquisado, :transtorno
      t.timestamps
    end
  end
end
