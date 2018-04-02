#encoding: utf-8

Dado("que eu cadastre um novo cliente com os valores {string}, {string} e {string}") do |nome, cpf, valor|
    @nav.add_customer

    @cliente = OpenStruct.new
    @cliente.name = nome
    @cliente.cpf = cpf
    @cliente.balance = valor
    
    @customer.register(@cliente)
end
  
Quando("realizo a sua venda com {string} e {string}") do |customer, balance|
    @nav.add_sale
    @sale.register_sale(customer, balance)
    sleep(2)
end
  
Então("vejo a mensagem de venda com sucesso {string}") do |msg_venda_success|
    expect(@sale.msg_sucess.text).to eql msg_venda_success
end

Dado("que eu acesse pagina de lista de venda") do
    @nav.access_list_sale
end
  
Quando("faço a busca das vendas") do
    @sale.list_sale
end
  
Então("vejo a lista de venda com o titulo {string}") do |sale_title|
    expect(@sale.title_sale_list.text).to eql sale_title
end