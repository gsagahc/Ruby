class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :cnpj_cpf
      t.decimal :comissao_a_prazo
      t.string :endereco
      t.string :site
      t.string :fone
      t.string :celular
      t.string :razao_social

      t.timestamps null: false
    end
  end
end
