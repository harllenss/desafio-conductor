require 'httparty'
require 'cucumber'
require 'rspec'
require 'json'

class Servico
    include HTTParty
    base_uri 'http://52.191.254.38/desafio'
    default_params output: 'json'
end