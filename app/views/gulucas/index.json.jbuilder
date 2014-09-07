json.array!(@gulucas) do |guluca|
  json.extract! guluca, :id, :nombre, :correo
  json.url guluca_url(guluca, format: :json)
end
