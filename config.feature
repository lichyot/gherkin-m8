Funcionalidade: Configurar produto

  Cenário: Adicionar um produto ao carrinho com seleções obrigatórias
    Dado que estou na página de detalhes do produto
    Quando eu seleciono a cor, o tamanho e a quantidade
    E clico no botão "Adicionar ao Carrinho"
    Então o produto é adicionado ao carrinho com as seleções escolhidas

  Cenário: Não adicionar ao carrinho sem selecionar opções obrigatórias
    Dado que estou na página de detalhes do produto
    Quando eu clico no botão "Adicionar ao Carrinho" sem selecionar cor, tamanho e quantidade
    Então devo ver uma mensagem de erro solicitando que eu selecione as opções

  Cenário: Limitar a quantidade de produtos por venda
    Dado que estou na página de detalhes do produto
    E já tenho 9 produtos no carrinho
    Quando eu tento adicionar mais um produto
    Então o produto é adicionado ao carrinho
    E o carrinho contém 10 produtos
    Quando eu tento adicionar mais um produto
    Então o produto não é adicionado ao carrinho
    E devo ver uma mensagem informando que o limite foi atingido

  Cenário: Limpar o carrinho volta ao estado original
    Dado que estou na página do carrinho
    E existem produtos no carrinho
    Quando eu clico no botão "Limpar"
    Então o carrinho está vazio
    E as seleções de cor, tamanho e quantidade do produto voltam ao estado inicial