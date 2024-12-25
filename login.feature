Funcionalidade: Login na plataforma

  Cenário: Login com credenciais válidas
    Dado que estou na tela de login
    Quando eu insiro um usuário válido e uma senha válida
    E clico no botão "Entrar"
    Então devo ser redirecionado para a tela de checkout

  Cenário: Login com credenciais inválidas
    Dado que estou na tela de login
    Quando eu insiro um usuário inválido ou uma senha inválida
    E clico no botão "Entrar"
    Então devo ver uma mensagem de alerta "Usuário ou senha inválidos"
    E devo permanecer na tela de login