require "test_helper"

class MedicoTest < ActiveSupport::TestCase
  test "deve salvar médico com atributos válidos" do
    medico = Medico.new(nome: 'Dr. Fulano', crm: '12345', especialidade: 'Cardiologia', cpf: '12345678901', email: 'fulano@dommoura.com')
    assert medico.save
  end

 test "não deve salvar médico com CRM duplicado" do
    medico1 = Medico.new(nome: 'Dr. Cicrano', crm: '23456', especialidade: 'Dermatologia', cpf: '12345678901', email: 'cicrano@montesinai.com')
    medico2 = Medico.new(nome: 'Dra. Beltrana', crm: '23456', especialidade: 'Gastroenterologia', cpf: '98765432101', email: 'beltrana@esperanca.com')

    medico1.save
    assert_not medico2.save, "Salvou um médico com um CRM já existente"
  end

end