json.array!(@contas_pagar) do |contas_pagar|
  json.extract! contas_pagar, :id, :id_cliente, :valor, :data, :vencimento, :obs, :data_pago
  json.url contas_pagar_url(contas_pagar, format: :json)
end
