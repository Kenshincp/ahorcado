require 'sinatra'
require './config'
require './lib/VerificarCaracter'

get '/' do
    session['verificador'] = VerificarCaracter.new
    @rayitas = session['verificador'].guardarSecreto('pescado')
    erb :juego
end

post '/' do
    session['verificador'].validar(params['letraIngresada'])     
end
