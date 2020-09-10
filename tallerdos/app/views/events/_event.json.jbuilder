json.extract! event, :id, :titulo, :descripcion, :fecha, :direccion, :created_at, :updated_at
json.url event_url(event, format: :json)
