json.extract! musuario, :id, :nombre, :apellidos, :usuario, :password, :sala, :tipo, :created_at, :updated_at
json.url musuario_url(musuario, format: :json)
