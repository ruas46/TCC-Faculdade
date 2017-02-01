class CreateTranstornoPesquisadoDoencas < ActiveRecord::Migration
  def change
    create_table :transtorno_pesquisado_doencas do |t|
      t.references :transtornos_pesquisado, :doenca
      t.timestamps
    end
  end
end
