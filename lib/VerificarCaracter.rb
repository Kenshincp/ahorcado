class VerificarCaracter 
    def validar caracter
        if caracter == "a"
            "Correcto!"
        else
            "Incorrecto!"
        end
    end
    def guardarSecreto palabra
        rayitas = "_"
        rayitas += (" _" * (palabra.size-1))
    end
end