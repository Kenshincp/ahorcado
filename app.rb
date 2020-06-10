require 'sinatra'
require './config'

get '/' do
    erb :juego
end

post '/' do
    "Letra correcta"
end
