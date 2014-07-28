json.array!(@diretors) do |diretor|
  json.extract! diretor, :id, :nome, :matricula, :senha, :diretoria
  json.url diretor_url(diretor, format: :json)
end
