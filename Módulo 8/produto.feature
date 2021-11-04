#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu acesse a página de compra de um produto da EBAC-SHOP

Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
Quando eu esquecer de configurar a cor, tamanho ou quantidade
Então deve exibir um alerta: "Obrigatório selecionar cor, tamanho e quantidade."

Cenário: Deve permitir apenas 10 produtos por venda
Quando eu selecionar uma quantidade acima de 10 produtos por venda
Então deve exibir um alerta: "Você selecionou uma quantidade acima do limite permitido de 10 produtos por venda"

Cenário: Quando eu clicar no botão “limpar” deve voltar ao estado original
Quando eu clicar no botão “limpar” encontrado abaixo das especificações do produto
Então as configurações do produto devem voltar ao estado original