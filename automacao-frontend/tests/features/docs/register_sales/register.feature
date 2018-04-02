#language: pt

Funcionalidade: Cadastrar venda
    Para que eu possa gerenciar vendas
    Sendo um administrador
    Posso cadastrar novas vendas

    @new_sale @auth @logout
    Esquema do Cenário: Nova venda

    Dado que eu cadastre um novo cliente com os valores "Seu joão", "98146084249" e "500"
    Quando realizo a sua venda com "<customer>" e "<balance>"
    Então vejo a mensagem de venda com sucesso "<msg_sucesso>"
    
    Exemplos:
        | customer       | balance    | msg_sucesso                             |
        | Seu joão       | 2333       | × Venda realizada com sucesso           |

    @list_sale @auth @clean_base 
    Cenario: Listar venda

    Dado que eu acesse pagina de lista de venda
    Quando faço a busca das vendas
    Então vejo a lista de venda com o titulo "Listar Transações"