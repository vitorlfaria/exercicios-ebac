            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de login da EBAC-SHOP

            Esquema do Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve me redirecionar para a página de checkout

            Exemplos:
            | usuario           | senha     |
            | pedro@ebac.com.br | senha@123 |
            | maria@ebac.com.br | senha@123 |
            | jorge@ebac.com.br | senha@123 |
            | vitor@ebac.com.br | senha@123 |

            Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
            Quando eu digitar o usuário "vitor@ebac.com.br"
            E a senha "incorreta"
            Então deve exibir um alerta: "usuário ou senha inválidos"