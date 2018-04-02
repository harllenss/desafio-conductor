#encoding: utf-8

Quando("faço login com {string} e {string}") do |login, senha|
    @login.load
    @login.logar(login, senha)
end
  
Então("vejo mensagem de boas vindas {string}") do |msg_bemvindo|
    expect(@dashboard.msg_welcome.text).to eql msg_bemvindo
end
  
Quando("vejo a mensagem {string}") do |exception|
    expect(@login.msg_exception.text).to eql exception
    sleep(2)
end