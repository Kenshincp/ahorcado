require './lib/VerificarCaracter.rb'

describe VerificarCaracter do
    it "Cuando recibimos a retornamos correcto " do
        #Arrange
        verificar = VerificarCaracter.new
        #act
        result = verificar.validar("a")
        #assert
        expect(result).to eq "Correcto!"
    end
    
end