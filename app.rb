require 'sinatra'
require './config'
require './lib/VerificarCaracter'

get '/' do
    session['verificador'] = VerificarCaracter.new
    @rayitas = session['verificador'].guardarSecreto('pescado')
    erb :juego
end

post '/' do
    @rayitas = session['verificador'].validar(params['letraIngresada'])
    erb :juego   
end
