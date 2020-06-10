require './lib/code_breaker'

describe CodeBreaker do
    it "intento con 10 y gano" do
        #arrange
        codeBreaker = CodeBreaker.new "10"
        #act
        codeBreaker.validar "10"
        result = codeBreaker.status
        #assert
        expect(result).to eq "Ganaste!"
    end

    it "intento con 23 y pierdo" do
        #arrange
        codeBreaker = CodeBreaker.new "10"
        #act
        codeBreaker.validar "23"
        result = codeBreaker.status
        #assert
        expect(result).to eq "23 - nada coincide"
    end

    it "intento con 02 y hay un número correcto" do
        #arrange
        codeBreaker = CodeBreaker.new 10
        #act
        codeBreaker.validar "02"
        result = codeBreaker.status
        #assert
        expect(result).to eq "02 - 1 correcto"
    end

    it "intento con 01 y hay dos número correcto" do
        #arrange
        codeBreaker = CodeBreaker.new "10"
        #act
        codeBreaker.validar "01"
        result = codeBreaker.status
        #assert
        expect(result).to eq "01 - 2 correcto"
    end

    it "intento con 1 y Cantidad de digitos incorrectos" do
        #arrange
        codeBreaker = CodeBreaker.new 10
        #act
        codeBreaker.validar "1"
        result = codeBreaker.status
        #assert
        expect(result).to eq "Cantidad de digitos incorrectos"
    end

    it "intento con 111 y Cantidad de digitos incorrectoss" do
        #arrange
        codeBreaker = CodeBreaker.new 10
        #act
        codeBreaker.validar "111"
        result = codeBreaker.status
        #assert
        expect(result).to eq "Cantidad de digitos incorrectos"
    end
end