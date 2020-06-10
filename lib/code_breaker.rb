class CodeBreaker

    attr_reader :status

    def initialize secreto
        @secreto=secreto.to_s
        @status= "Perdiste!"
    end

    def validar numero
        
        if numero.length == @secreto.length
        
            coincidencias = contar_coincidencias(numero)

            if @secreto == numero
                @status= "Ganaste!"
            elsif coincidencias == 0
                @status = "#{numero} - nada coincide"
            else
                @status = "#{numero} - #{coincidencias} correcto"
            end
        else
            @status = "Cantidad de digitos incorrectos"
        end
    end

    def contar_coincidencias numero
        coincidencias = 0
        numero.split('').each do |digito|
            if @secreto.include? digito
                coincidencias += 1
            end
        end
        coincidencias
    end

end