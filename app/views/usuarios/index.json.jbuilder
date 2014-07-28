json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nome, :matricula, :diretoria, :senha, :tipo
  json.url usuario_url(usuario, format: :json)
end
