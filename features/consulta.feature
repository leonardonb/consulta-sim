Feature: Botao de exclusao de consultas
  As a Usuario final
  I want to Tornar a acao de exclusao de consultas mais visivel e destacada, atraves de um botao vermelho, para evitar erros acidentais
  So that Realizar a exclusao de consultas de forma mais segura com uma camada visual de recursos.

  Scenario: Usuario precisa deletar determinada consulta a pedido do paciente
    Given Estou na pagina de consultas
    And O 'paciente Um' quer desmarcar a consulta
    When Eu clico em Mostrar essa consulta
    And Eu clico em apagar consulta
    Then A consulta foi deletada