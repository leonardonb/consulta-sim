Given('Estou na pagina de novo paciente') do
  visit new_paciente_path
  expect(page).to have_content('Novo Paciente')
end

And('eu preencho os campos nome {string}, data_nascimento {string}, cpf {string}, email {string}, telefone {string}, cep {string}, cidade {string}, bairro {string}, logradouro {string}, complemento {string}') do |nome, data_nascimento, cpf, email, telefone, cep, cidade, bairro, logradouro, complemento|

  fill_in 'paciente[nome]', :with => nome
  fill_in 'paciente[data_nasc]', :with => data_nascimento
  fill_in 'paciente[cpf]', :with => cpf
  fill_in 'paciente[email]', :with => email
  fill_in 'paciente[telefone]', :with => telefone
  fill_in 'paciente[endereco_attributes][cep]', :with => cep
  fill_in 'paciente[endereco_attributes][cidade]', :with=> cidade
  fill_in 'paciente[endereco_attributes][bairro]', :with => bairro
  fill_in 'paciente[endereco_attributes][logradouro]', :with => logradouro
  fill_in 'paciente[endereco_attributes][complemento]', :with => complemento
end

When('eu aperto no botao para cadastrar o paciente') do
  click_button 'Create Paciente'
end

Then('eu visualizo que o cadastro foi realizado com sucesso') do
    expect(page).to have_content('Pacientes')
end

Given('Estou na tela de novo paciente') do
  visit new_paciente_path
  expect(page).to have_content('Novo Paciente')
end

When('Eu clico em voltar para Pacientes') do
  click_link 'Voltar para Pacientes'
  visit pacientes_path
end

Then('A tela de pacientes aparece para consulta') do
  expect(page).to have_content('Pacientes')
end