class LoginPage < SitePrism::Page

    element :input_login, '#user-name'
    element :input_senha, '#password'
    element :btn_logar, '#login-button'
    element :text_alerta, 'h3[data-test="error"]'    #   '#login_button_container > div > form > h3'

    element :info_login, '#login_credentials'
    element :info_senha, 'div.login_password'

    element :input_pesquisar, '#exemplo'
    
    def doLogin(login, senha)
        input_login.set login       #.fill_in with: name
        input_senha.set senha
        btn_logar.click
    end

    def doPesquisa(nome)
        input_pesquisar.set nome
        btn_pesquisar.click
    end

    def go
        visit 'https://www.saucedemo.com/'
    end
  
end
  