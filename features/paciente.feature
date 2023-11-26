Feature: Criacao de Novo Paciente
  As a Usuario final
  I want to Ter a opcao de voltar a lista de pacientes
  So that Poder navegar entre os pacientes de forma conveniente

  Scenario: Criar novo paciente
    Given Estou na pagina de novo pacientes
    And eu preencho os campos nome 'Paciente X' data_nascimento '16 02 1980' cpf '12345543210' email 'pacientex@hipocondria.com' telefone '87999999998 cep '55295-000' cidade 'Garanhuns' bairro 'Heliopolis' logradouro 'Rua A' complemento 'casa azul'
    When eu aperto no botao para cadastrar o paciente
    Then eu visualizo que o cadastro foi realizado com sucesso

  Scenario: Voltar para tela de pacientes
    Given Estou na tela de novo paciente
    When Eu clico em voltar
    Then A tela de pacientes aparece para consulta


