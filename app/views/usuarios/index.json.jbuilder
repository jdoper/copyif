json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nome, :matricula, :diretoria, :senha
  json.url usuario_url(usuario, format: :json)
end
