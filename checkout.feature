Feature: Tela de cadastro - Checkout


    Scenario Outline: Cadastro com campos vazios
    Given que estou na tela de cadastro
    When eu clico no botão "Cadastrar" sem preencher nenhum campo obrigatório
    Then devo ver uma mensagem de alerta solicitando o preenchimento dos campos obrigatórios
    And devo permanecer na tela de cadastro


  Scenario Outline: Cadastro com dados válidos
    Given que estou na tela de cadastro
    When eu preencho os campos obrigatórios com dados válidos:
    And clico no botão "Cadastrar"
    Then devo ser redirecionado para a tela de sucesso do cadastro

    Examples:
      | Campo                | Valor             |
      | Nome                 | João da Silva     |
      | Sobrenome            | Silva             |
      | Email                | joao@email.com    |
      | Senha                | MinhaSenha123     |
      | Confirmação de Senha | MinhaSenha123     |


  Scenario Outline: Cadastro com email inválido
    Given que estou na tela de cadastro
    When eu preencho os campos obrigatórios com dados válidos e um email inválido:
    And clico no botão "Cadastrar"
    Then devo ver uma mensagem de erro indicando que o email está em formato inválido
    And devo permanecer na tela de cadastro

  Examples:
      | Campo                | Valor            |
      | Nome                 | Maria            |
      | Sobrenome            | Souza            |
      | Email                | mariaemail.com   |
      | Senha                | OutraSenha456    |
      | Confirmação de Senha | OutraSenha456    |


  Scenario Outline: Cadastro com campo obrigatório vazio
    Given que estou na tela de cadastro
    When eu preencho apenas alguns campos obrigatórios e deixo outros vazios:
    And clico no botão "Cadastrar"
    Then devo ver uma mensagem de alerta solicitando o preenchimento de todos os campos obrigatórios
    And devo permanecer na tela de cadastro

    Examples:
      | Campo                | Valor            |
      | Nome                 | Jose             |
      | Sobrenome            |                  |
      | Email                | jose@email.com   |
      | Senha                | minhaSenha123    |
      | Confirmação de Senha | minhaSenha123    |