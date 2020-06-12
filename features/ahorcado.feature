Feature: Adivina las letras

Scenario: adivina una letra
    Given que iniciamos el juego
    When adivina con "a"
    Then debe mostrarme "Letra correcta"

Scenario: adivina una letra incorrecta
    Given que iniciamos el juego
    When adivina con "b"
    Then debe mostrarme "Letra incorrecta"