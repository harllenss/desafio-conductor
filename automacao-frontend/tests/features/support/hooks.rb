Before do
  @login = LoginPage.new
  @dashboard = DashBoardPage.new
  @nav = NavPage.new
  @customer = CustomerPage.new 
  @sale = TransacaoPage.new
end

Before('@auth') do
    @login.load
    @login.logar('admin', 'admin')
end

After('@logout') do
    @nav.bye
end

After('@clean_base') do
    @nav.access_list_customer
    @customer.clean_base
    @nav.bye
end

After do |scenario|
    nome_cenario = scenario.name.tr(' ', '_').downcase!
    nome_cenario = nome_cenario.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/, '')
    screenshot = "logs/shots/#{nome_cenario}.png"
    page.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Clique para ver a evidência!')
end