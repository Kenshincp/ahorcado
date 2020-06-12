class VerificarCaracter 
    def validar caracter
        if caracter.length == 1
            @rayitas = ""
            @secreto.split('').each do |char |
                if (char == caracter)
                    @rayitas += "#{char} "
                else
                    @rayitas += "_ "
                end
            end
            @rayitas.chomp!(" ")

        else
            @rayitas ="Debes ingresar una letra"
        end
        return @rayitas
    end
    def guardarSecreto palabra
        @secreto = palabra
        @rayitas = "_"
        @rayitas += (" _" * (palabra.size-1))
    end
end