class CreateFornecedores < ActiveRecord::Migration
  def change
    create_table :fornecedores do |t|
      t.string :nome
      t.string :cnpj
      t.string :endereco
      t.string :razao_social
      t.string :email
      t.string :site
      t.string :fone
      t.string :celular

      t.timestamps null: false
    end
  end
end
