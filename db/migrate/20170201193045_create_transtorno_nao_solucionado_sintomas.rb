class CreateTranstornoNaoSolucionadoSintomas < ActiveRecord::Migration
  def change
    create_table :transtorno_nao_solucionado_sintomas do |t|
      t.references :transtornos_nao_solucionado, :sintoma
      t.timestamps
    end
  end
end
