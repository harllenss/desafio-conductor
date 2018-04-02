#encoding: utf-8

Dado("que eu acesse pagina de registro de clientes") do
    @nav.add_customer
end

Dado("que eu acesse pagina de lista de cliente") do
    @nav.access_list_customer
end

Quando("faço o seu cadastro") do
    @cliente = OpenStruct.new
    @cliente.name = Faker::DragonBall.character
    @cliente.cpf = Faker::CPF.numeric
    @cliente.balance = Faker::Number.number(3)

    @customer.register(@cliente)
end
  
Quando("faço a busca dos clientes") do
    @customer.list_customer
end
  
Então("vejo a mensagem de sucesso {string}") do |sucess_msg|
    expect(@customer.msg_sucess.text).to eql sucess_msg
end

Então("desejo visualiza-lo com o titulo {string}") do |titulo_view|
    @customer.search(@cliente.name)

    expect(@customer.title_view.text).to eql titulo_view
end
 
Então("vejo a lista com o titulo {string}") do |titulo_list|
    expect(@customer.title_list.text).to eql titulo_list
end