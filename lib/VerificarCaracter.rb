class VerificarCaracter 
    def validar caracter
        if caracter.length == 1
            @secreto.split('').each_with_index do |char,index|
                if (char == caracter)
                    @rayitas[index*2] = char
                end
            end
        else
            @rayitas ="Debes ingresar una letra"
        end

        unless @rayitas.include?("_")
            @rayitas += " -- GANASTE!"
        end 
        return @rayitas
    end
    def guardarSecreto palabra
        @secreto = palabra
        @rayitas = "_"
        @rayitas += (" _" * (palabra.size-1))
    end

    def definirIntentos cantidad
        cantidad
    end
end