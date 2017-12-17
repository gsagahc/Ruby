json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nome, :cnpj-cpf, :comissao_a_prazo, :endereco, :site, :fone, :celular, :razao_social
  json.url cliente_url(cliente, format: :json)
end
