Given('Estou na pagina de consultas') do
  visit consultas_path
end

And('O {string} quer desmarcar a consulta') do |nome_paciente|

end

When('Eu clico em Mostrar essa consulta') do
  first(:button, 'Mostrar esta consulta').click
  expect(page).to have_content('Detalhes do Agendamento')
end

And('Eu clico em apagar consulta') do
  click_button 'Apagar Consulta'
end

Then('A consulta foi deletada') do
  expect(page).not_to have_content('Detalhes do Agendamento')
end

Given('Estou na tela de consultas e o {string} desiste de desmarcar a consulta') do |nome_paciente|
  visit consultas_path
end

When('Eu clico em voltar para tela inicial') do
  click_link 'Voltar para a Página Inicial'

end

Then('A tela inicial sera exibida') do
  visit root_path
end
