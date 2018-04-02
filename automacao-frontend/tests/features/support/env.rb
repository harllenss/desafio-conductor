require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'site_prism'
require 'faker'
require 'cpf_faker'

$env = ENV['BROWSER']



Capybara.configure do |config|

    if $env == 'chrome'
        config.default_driver = :selenium_chrome
    else 
        config.default_driver = :selenium
    end

    config.app_host = 'http://desafioqa.marketpay.com.br:9085/desafioqa'
end

Capybara.default_max_wait_time = 5