class TransacaoPage < SitePrism::Page

    element :combo_customer, 'select[id=cliente]'
    element :txt_balance, '#valorTransacao'
    element :btn_save, '#botaoSalvar'
    element :btn_find, 'input[name="j_idt20"]'
    element :msg_sucess, '#alertMessage'
    element :title_sale_list, '.col-xs-12 h1'

    def register_sale(customer,value)
        combo_customer.find('option', text: customer).select_option
        txt_balance.set txt_balance
        btn_save.click
    end

    def list_sale
        btn_find.click 
    end

end 