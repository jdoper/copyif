json.array!(@fotocopia) do |fotocopium|
  json.extract! fotocopium, :id, :titulo, :originais, :quantidade, :data, :justificativa
  json.url fotocopium_url(fotocopium, format: :json)
end
