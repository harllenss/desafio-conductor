class NavPage < SitePrism::Page
    #Cliente
    element :exit_system, '#header input[type=submit]'
    element :menu_qa, 'a[title="QA"]'
    element :menu_customer, 'a[title="Clientes"]'
    element :menu_addcustomer, 'a[title="Incluir"]'
    element :list_customer, 'a[href="/desafioqa/listarCliente"]'

    #Transação
    element :menu_sale, 'a[title="Transações"]'
    element :menu_addsale, 'a[href="/desafioqa/incluirVenda"]'
    element :list_sale, 'a[href="/desafioqa/listarVenda"]'


    def bye
        exit_system.click
    end
    
    def add_customer
        menu_qa.click
        menu_customer.hover
        sleep(2)
        menu_addcustomer.click
        sleep(2)
    end

    def access_list_customer
        menu_qa.click
        menu_customer.click
        list_customer.click
    end

    def add_sale
        menu_qa.click
        menu_sale.click
        menu_addsale.click
    end

    def access_list_sale
        menu_qa.click
        menu_sale.click
        list_sale.click
    end

end