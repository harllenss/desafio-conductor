#language: pt


Funcionalidade: Cadastrar clientes
    Para que eu possa gerenciar clientes
    Sendo um administrador
    Posso cadastrar novos clientes

    @new_customer @auth @logout
    Cenário: Novo cliente
    Dado que eu acesse pagina de registro de clientes
    Quando faço o seu cadastro
    Então vejo a mensagem de sucesso "× Cliente salvo com sucesso" 

    @view_customer @auth @logout
    Cenario: Visualizar cliente após cadastro
    
    Dado que eu acesse pagina de registro de clientes
    Quando faço o seu cadastro
    Então desejo visualiza-lo com o titulo "Visualizar Cliente"

    @list_customer @auth @logout
    Cenario: Listar cliente

    Dado que eu acesse pagina de lista de cliente
    Quando faço a busca dos clientes
    Então vejo a lista com o titulo "Listar Clientes"