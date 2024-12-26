Funcionalidade: Tela de cadastro - Checkout


  Cenário: Cadastro com campos vazios
    Dado que estou na tela de cadastro
    Quando eu clico no botão "Cadastrar" sem preencher nenhum <Campos> obrigatório
    Então devo ver uma mensagem de alerta solicitando o preenchimento dos <Campos> obrigatórios
    E devo permanecer na tela de cadastro


  Cenário: Cadastro com dados válidos
    Dado que estou na tela de cadastro
    Quando eu preencho os <Campos> obrigatórios com <Valores> válidos
    E clico no botão "Cadastrar"
    Então devo ser redirecionado para a tela de sucesso do cadastro

    Exemplos:
      | Campos               | Valores           |
      | Nome                 | João da Silva     |
      | Sobrenome            | Silva             |
      | Email                | joao@email.com    |
      | Senha                | MinhaSenha123     |
      | Confirmação de Senha | MinhaSenha123     |



  Cenário: Cadastro com email inválido
    Dado que estou na tela de cadastro
    Quando eu preencho os <Campos> obrigatórios com <Valores> válidos e um email inválido:
    E clico no botão "Cadastrar"
    Então devo ver uma mensagem de erro indicando que o email está em formato inválido
    E devo permanecer na tela de cadastro

  Exemplos:
      | Campos               | Valores          |
      | Nome                 | Maria            |
      | Sobrenome            | Souza            |
      | Email                | mariaemail.com   |
      | Senha                | OutraSenha456    |
      | Confirmação de Senha | OutraSenha456    |



  Cenário: Cadastro com campo obrigatório vazio
    Dado que estou na tela de cadastro
    Quando eu preencho apenas alguns <Campos> obrigatórios e deixo outros vazios:
    E clico no botão "Cadastrar"
    Então devo ver uma mensagem de alerta solicitando o preenchimento de todos os <Campos> obrigatórios
    E devo permanecer na tela de cadastro

    Exemplos:
      | Campos               | Valores          |
      | Nome                 | Jose             |
      | Sobrenome            |                  |
      | Email                | jose@email.com   |
      | Senha                | minhaSenha123    |
      | Confirmação de Senha | minhaSenha123    |