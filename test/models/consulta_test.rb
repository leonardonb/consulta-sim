# test/models/consulta_test.rb
require 'test_helper'

class ConsultaTest < ActiveSupport::TestCase

  test 'não deve salvar consulta com data e horário no passado' do
    medico = medicos(:one)
    paciente = pacientes(:one)

    # Definindo uma data e horário no passado
    data_passada = Date.current - 2.days
    horario_passado = '10:00'

    consulta_passada = Consulta.new(data: data_passada, horario: horario_passado, paciente: paciente, medico: medico)
    assert_not consulta_passada.save, 'Salvou uma consulta com data e horário no passado'
  end

  test 'não deve salvar consulta quando o horário está ocupado' do
    medico = medicos(:one)
    paciente = pacientes(:one)
    data = Date.current + 1.day # Data futura
    horario = '10:00'

    Consulta.create(data: data, horario: horario, paciente: paciente, medico: medico)
    consulta_conflitante = Consulta.new(data: data, horario: horario, paciente: pacientes(:two), medico: medico)

    assert_not consulta_conflitante.save, 'Salvou uma consulta em um horário já ocupado'
  end

end

