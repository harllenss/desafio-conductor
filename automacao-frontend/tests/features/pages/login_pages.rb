class LoginPage < SitePrism::Page
    set_url '/login'

    element :txt_login, 'input[name=username]'
    element :txt_password, 'input[type=password]'
    element :find_check, '.checkbox'
    element :btn_login, '.btn-primary'
    element :msg_exception, '#login-form font'


    def logar(login, senha)
        txt_login.set login
        txt_password.set senha
        find_check.click
        btn_login.click
    end

end