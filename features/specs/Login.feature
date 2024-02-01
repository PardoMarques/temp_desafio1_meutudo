            #language: pt

            Funcionalidade: Login

            Como: um usuário
            Eu quero: utilizar as funcionalidades da página inicial de login
            Para: previnir quebras do principal fluxo dos usuários

            Contexto: Acessando o campo de login e logando com todos os usuários

            @login
            Esquema do Cenario: Login executado com sucesso
            Quando o usuário <usuarios> com a senha "secret_sauce" efetuar o login
            Então estará contido o seguinte texto "Products" na página

            Exemplos:
            | usuarios                  |
            | "standard_user"           |
            | "problem_user"            |
            | "performance_glitch_user" |
            #| "locked_out_user"         |

            # para executar: cucumber -t @loginErrado
            @loginErrado
            Esquema do Cenario: Login executado com erro
            Quando o usuário <usuarios> com a senha <senhas> efetuar o login
            Então não estará contido o seguinte texto "Products" na página
            E estará contido o seguinte texto <deveVisualizar> na página

            Exemplos:
            | usuarios        | senhas         | deveVisualizar                                                              |
            | "standard_user" | ""             | "Epic sadface: Password is required"                                        |
            | ""              | ""             | "Epic sadface: Username is required"                                        |
            | ""              | "secret_sauce" | "Epic sadface: Username is required"                                        |
            | "standard_user" | "senhaerrada"  | "Epic sadface: Username and password do not match any user in this service" |
