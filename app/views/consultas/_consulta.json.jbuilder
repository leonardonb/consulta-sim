json.extract! consulta, :id, :data, :horario, :paciente_id, :medico_id, :created_at, :updated_at
json.url consulta_url(consulta, format: :json)
