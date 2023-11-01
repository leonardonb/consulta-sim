json.extract! paciente, :id, :nome, :data_nasc, :cpf, :email, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
