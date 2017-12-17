json.array!(@fornecedores) do |fornecedor|
  json.extract! fornecedor, :id, :nome, :cnpj, :endereco, :razao_social, :email, :site, :fone, :celular
  json.url fornecedor_url(fornecedor, format: :json)
end
