#language: pt

Funcionalidade: Consultar Produtos
    
Cenario: Obter uma lista de produtos
    Quando solicito uma requisição para serviço de produtos
    Então devo obter o código de resposta "200"
        E vejo uma lista completa de produtos