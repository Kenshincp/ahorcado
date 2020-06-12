class VerificarCaracter 
    def validar caracter
        if caracter == "a"
            "Letra correcta"
        else
            "Letra incorrecta"
        end
    end
    def guardarSecreto palabra
        rayitas = "_"
        rayitas += (" _" * (palabra.size-1))
    end
end