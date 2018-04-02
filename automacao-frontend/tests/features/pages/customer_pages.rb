class CustomerPage < SitePrism::Page

    element :name, '#nome'
    element :cpf, '#cpf'
    element :status, 'select[id="status"]'
    element :balance, '#saldoCliente'
    element :btn_save, '#botaoSalvar'
    element :msg_sucess, '#alertMessage'

    element :cancel, '.btn-danger'
    element :find_customer, 'input[name="j_idt17"]'
    element :btn_find, 'input[name="j_idt20"]'
    element :btn_view, '.btn-sm.btn-primary'
    element :title_view, '.col-lg-4 h1'
    element :title_list, '.col-xs-12 h1'
    
    element :limpar_base, 'input[name="j_idt22"]'

    def register(client)
        self.name.set client.name
        self.cpf.set client.cpf
        self.balance.set client.balance
        self.btn_save.click
        sleep(1)
    end

    def search(target)
        self.cancel.click
        self.find_customer.set target
        self.btn_find.click
        self.btn_view.click
    end

    def list_customer 
        self.btn_find.click
    end

    def clean_base
        limpar_base.click
    end

end