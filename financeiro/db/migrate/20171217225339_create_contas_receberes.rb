class CreateContasReceberes < ActiveRecord::Migration
  def change
    create_table :contas_receberes do |t|
      t.integer :id_fornecedor
      t.decimal :valor
      t.date :data
      t.date :vencimento
      t.string :obs
      t.date :data_pago

      t.timestamps null: false
    end
  end
end
