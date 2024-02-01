            #language: pt

            Funcionalidade: Desafio

            Contexto: Acessando a página
            Dado que acesso a página do desafio Challenging DOM

            Esquema do Cenario: Clicando nos botoes azul, vermelho e verde
            Quando clicar no botão <cor_botao>
            Então pelo menos um dos textos contidos nos botões será modificado

            Exemplos:
            | cor_botao  |
            | "azul"     |
            | "vermelho" |
            | "verde"    |


            Cenario: Clicando em todos os edit e delete da página
            Quando clicar em "edit" da linha <linha>
            Então a url da página será atualizada com o final "#edit"
            Quando clicar em "delete" da linha <linha>
            Então a url da página será atualizada com o final "#delete"

            Exemplos:
            | linha |
            | 0     |
            | 1     |
            | 2     |
            | 3     |
            | 4     |
            | 5     |
            | 6     |
            | 7     |
            | 8     |
            | 9     |
