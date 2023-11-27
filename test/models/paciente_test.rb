# test/models/paciente_test.rb
require 'test_helper'

class PacienteTest < ActiveSupport::TestCase
  test 'deve salvar paciente com todos os atributos válidos' do
    paciente = Paciente.new(nome: 'João Silva', data_nasc: '1980-01-01', cpf: '12345678901', email: 'joao.silva@example.com', telefone: '11987654321')
    assert paciente.save
  end

  test 'não deve salvar paciente com formato de CPF inválido' do
    paciente = Paciente.new(nome: 'Doentinha da silva', data_nasc: '1990-03-03', cpf: '123455432as', email: 'dodoidasilva@hipocondria.com', telefone: '11987654321')
    assert_not paciente.save, 'Salvou um paciente com formato de CPF inválido'
  end
  end
