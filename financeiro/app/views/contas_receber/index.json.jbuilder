json.array!(@contas_receber) do |contas_receber|
  json.extract! contas_receber, :id, :id_fornecedor, :valor, :data, :vencimento, :obs, :data_pago
  json.url contas_receber_url(contas_receber, format: :json)
end
