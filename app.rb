require 'sinatra'
require './config'
require './lib/VerificarCaracter'

get '/' do
    @rayitas = "_ _ _ _ _ _ _"
    erb :juego
end

post '/' do
    verificar = VerificarCaracter.new
    verificar.validar(params['letraIngresada'])     
end
