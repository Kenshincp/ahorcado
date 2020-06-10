require 'sinatra'
require './config'

get '/' do
    erb :juego
end

post '/' do
    if params['letraIngresada'] == 'a'
        "Letra correcta"
    else
        "Letra incorrecta"
    end
end
