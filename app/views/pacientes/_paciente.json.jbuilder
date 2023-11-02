json.extract! paciente, :id, :nome, :data_nasc, :cpf, :email, :telefone, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
