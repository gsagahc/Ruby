class CreateContasPagar < ActiveRecord::Migration
  def change
    create_table :contas_pagar do |t|
      t.integer :id_cliente
      t.decimal :valor
      t.date :data
      t.date :vencimento
      t.string :obs
      t.date :data_pago

      t.timestamps null: false
    end
  end
end
