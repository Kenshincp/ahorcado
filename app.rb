require 'sinatra'
require './config'
require './lib/VerificarCaracter'

get '/' do
    session['verificador'] = VerificarCaracter.new
    @intentos = session['verificador'].intentos
    @rayitas = session['verificador'].guardarSecreto('pescado')
    erb :juego
end

post '/' do
    @rayitas = session['verificador'].validar(params['letraIngresada'])
    @intentos = session['verificador'].intentos
    erb :juego   
end
