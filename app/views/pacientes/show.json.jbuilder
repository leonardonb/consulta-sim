#json.partial! "pacientes/paciente", paciente: @paciente

  json.id @paciente.id
  json.nome @paciente.nome
  json.data_nasc @paciente.data_nasc
  json.cpf @paciente.cpf
  json.email @paciente.email
  json.telefone @paciente.telefone

end
# Detalhes do endereço

json.endereco do
  json.cep @paciente.endereco.cep
  json.cidade @paciente.endereco.cidade
  json.bairro @paciente.endereco.bairro
  json.logradouro @paciente.endereco.logradouro
  json.complemento @paciente.endereco.complemento
end
