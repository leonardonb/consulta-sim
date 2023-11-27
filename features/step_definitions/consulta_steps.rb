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
  expect(page).not_to have_content('Detalhes da Consulta')
end
