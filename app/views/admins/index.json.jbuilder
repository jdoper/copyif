json.array!(@admins) do |admin|
  json.extract! admin, :id, :senha, :limiteCopias
  json.url admin_url(admin, format: :json)
end
