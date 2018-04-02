#encoding: utf-8

Quando("solicito uma requisição para serviço de produtos") do
    @list_product = Servico.get(
        '/produtos',
        :headers => {
            'token' => 'desafio'
        }
    )
end
  
Então("devo obter o código de resposta {string}") do |status|
    expect(@list_product.response.code).to eql status
end
  
Então("vejo uma lista completa de produtos") do
    expect(@list_product.parsed_response).not_to be_empty

    @list_product.parsed_response.each do |product|
        expect(product).to have_key('id')
        expect(product).to have_key('nome')
        expect(product).to have_key('descricao')
        expect(product).to have_key('valor_venda')
        expect(product).to have_key('estoque')
        expect(product).to have_key('endereco_foto')
        expect(product).to have_key('codigo_barras')
    end

    puts @list_product.parsed_response.to_json

end