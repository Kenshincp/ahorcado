require './lib/VerificarCaracter.rb'

describe VerificarCaracter do
    it "Cuando recibimos a retornamos _ _ _ _ a _ _" do
        #Arrange
        verificar = VerificarCaracter.new
        verificar.guardarSecreto("pescado")
        #act
        result = verificar.validar("a")
        #assert
        expect(result).to eq "_ _ _ _ a _ _"
    end

    it "Cuando recibimos p retornamos p _ _ _ _ _ _" do
        #Arrange
        verificar = VerificarCaracter.new
        verificar.guardarSecreto("pescado")
        #act
        result = verificar.validar("p")
        #assert
        expect(result).to eq "p _ _ _ _ _ _"
    end

    it "Cuando recibimos b retornamos Incorrecto " do
        #Arrange
        verificar = VerificarCaracter.new
        verificar.guardarSecreto("pescado")
        #act
        result = verificar.validar("b")
        #assert
        expect(result).to eq "_ _ _ _ _ _ _"
    end
    it "si la palabra secreta es pescado debe devolver '_ _ _ _ _ _ _'" do
       verificar = VerificarCaracter.new
       resultado = verificar.guardarSecreto("pescado")
       expect(resultado).to eq "_ _ _ _ _ _ _"
    end

    it "si la palabra secreta es murcielago debe devolver '_ _ _ _ _ _ _ _ _ _'" do
        verificar = VerificarCaracter.new
        resultado = verificar.guardarSecreto("murcielago")
        expect(resultado).to eq "_ _ _ _ _ _ _ _ _ _"
     end
    it "si agrego una p ejecuto y luego una a debe devolver 'p _ _ _ a _ _'" do
        verificar = VerificarCaracter.new
        verificar.guardarSecreto("pescado")
        resultado = verificar.validar("p")
        resultado = verificar.validar("a")
        expect(resultado).to eq "p _ _ _ a _ _"
    end 

    it "Enviamos 3 intentos nos devuelve 3" do
        verificar = VerificarCaracter.new
        resultado = verificar.definirIntentos(3)
        expect(resultado).to eq 3
    end
end