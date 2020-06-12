require 'sinatra'
require './config'

get '/' do
    @rayitas = "_ _ _ _ _ _ _"
    erb :juego
end

post '/' do

    if params['letraIngresada'] == 'a'
        "Letra correcta"
    else
        "Letra incorrecta"
    end
end
