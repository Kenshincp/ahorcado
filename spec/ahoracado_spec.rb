require './lib/VerificarCaracter.rb'

describe VerificarCaracter do
    it "Cuando recibimos a retornamos correcto " do
        #Arrange
        verificar = VerificarCaracter.new
        #act
        result = verificar.validar("a")
        #assert
        expect(result).to eq "Letra correcta"
    end

    it "Cuando recibimos b retornamos Incorrecto " do
        #Arrange
        verificar = VerificarCaracter.new
        #act
        result = verificar.validar("b")
        #assert
        expect(result).to eq "Letra incorrecta"
    end
    
end