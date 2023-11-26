Feature: Criacao de Novo Paciente
  As a Usuario final
  I want to Ter a opcao de voltar a lista de pacientes
  So that Poder navegar entre os pacientes de forma conveniente

  Scenario: Voltar para tela de pacientes
    Given Estou na tela de novo paciente
    And Quero voltar para a tela de pacientes
    When Eu clico em voltar
    Then A tela de pacientes aparece para consulta

  Scenario: Criar novo paciente
    Given Estou na tela de pacientes
    And Quero criar novo paciente
    When Eu clico em novo paciente
    Then A tela de novo paciente aparece para nova insercao

