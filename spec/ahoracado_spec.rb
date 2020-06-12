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
    it "si la palabra secreta es pescado debe devolver '_ _ _ _ _ _ _'" do
       #Arrange
       verificar = VerificarCaracter.new
       
       resultado = verificar.guardarSecreto("pescado")

       expect(resultado).to eq "_ _ _ _ _ _ _"

    end
end