#language: pt

Funcionalidade: Login
    Sendo um administrador do sistema
    Posso estar logando no sistema com os meus dados cadastrados para realizar o gerenciamento de atividades

    @login @logout
    Cenário: Login do usuário

        Quando faço login com "admin" e "admin"
        Então vejo mensagem de boas vindas "Bem vindo ao Desafio"
    
    @login_exp
    Esquema do Cenario: Exceções de login

        Quando faço login com "<login>" e "<senha>"
        E vejo a mensagem "<msg_excecao>"

    Exemplos:
      | login        | senha           | msg_excecao           |
      | admin        | administrador   | Credenciais inválidas |
      | supla.papito | admin           | Credenciais inválidas |
      | admin        |                 | Credenciais inválidas |
      |              | admin           | Credenciais inválidas |
