            #language: pt

            Funcionalidade: Tela de cadastro - checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de cadastro no checkout da EBAC-SHOP

            Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Quando eu preencher todos os campos obrigatório e for finalizar o cadastro
            Então deve aparecer uma mensagem "cadastro realizado com sucesso"

            Esquema do Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            Quando eu inserir um <email> inválido
            Então deve pararecer uma <mensagem> de erro: "Formato de email inválido. Um email deve conter (@)"

            Exemplos:
            | email         | mensagem |
            | joãoemail.com | erro     |
            | pedro@email   | erro     |
            | mariaebac     | erro     |

            Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta
            Quando eu tentar finalizar o cadastro com campos vazios
            Então deve aparecer um alerta: "Ainda há campos vazios no cadastro"