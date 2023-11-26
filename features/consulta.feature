Feature: Botao de exclusao de consultas
  As a Usuario final
  I want to Tornar a acao de exclusao de consultas mais visivel e destacada, atraves de um botao vermelho, para evitar erros acidentais
  So that Realizar a exclusao de consultas de forma mais segura com uma camada visual de recursos.

  Scenario: Usuario precisa deletar determinada consulta a pedido do paciente
    Given Estou na pagina de detalhes da consulta
    And O paciente em tela quer desmarcar a consulta
    When Eu clico em apagar consulta
    Then A consulta sera deletada

  Scenario: Paciente consulta horario e desiste da exclusao
    Given Estou na tela de detalhe da consulta
    And O paciente em tela desiste desmarcar a consulta
    When Eu clico em voltar para tela inicial
    Then A tela inicial sera exibida