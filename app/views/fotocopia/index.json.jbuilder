json.array!(@fotocopia) do |fotocopium|
 json.extract! fotocopium, :id, :titulo, :originais, :quantidade, :data, :justificativa, :matricula, :check, :link
  json.url fotocopium_url(fotocopium, format: :json)
end
