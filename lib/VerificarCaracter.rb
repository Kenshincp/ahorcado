class VerificarCaracter 
    def validar caracter
        if caracter.length == 1
            if caracter == "a"
                "Letra correcta"
            else
                "Letra incorrecta"
            end
        else
            "Debes ingresar una letra"
        end
    end
    def guardarSecreto palabra
        "_ _ _ _ _ _ _"
    end
end