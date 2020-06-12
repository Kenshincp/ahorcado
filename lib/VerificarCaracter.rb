class VerificarCaracter 
    def validar caracter
        if caracter.length == 1
            old_rayitas = @rayitas
            @rayitas = ""
            @secreto.split('').each_with_index do |char, index |
                if (char == caracter)
                    @rayitas += "#{char} "
                else
                    @rayitas += "_ "
                end
            end
            @rayitas.chomp!(" ")

            if(old_rayitas == @rayitas)
                @rayitas ="Letra incorrecta"
            end
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