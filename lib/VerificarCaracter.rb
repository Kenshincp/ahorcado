class VerificarCaracter 
    def validar caracter
        if caracter.length == 1
            actualizoCaracter = false
            @secreto.split('').each_with_index do |char,index|
                if (char == caracter)
                    @rayitas[index*2] = char
                    actualizoCaracter = true
                end
            end
            if actualizoCaracter == false
                @intentos = @intentos - 1
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

    def initialize
        @intentos = 3
    end

    attr_reader :intentos
end