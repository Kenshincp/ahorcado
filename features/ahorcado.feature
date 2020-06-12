Feature: Adivina las letras

Scenario: ver las rayitas
    Given que iniciamos el juego
    Then debe mostrarme "_ _ _ _ _ _ _"

Scenario: adivina una letra
    Given que iniciamos el juego
    When adivina con "a"
    Then debe mostrarme "Letra correcta"

Scenario: adivina una letra incorrecta
    Given que iniciamos el juego
    When adivina con "b"
    Then debe mostrarme "Letra incorrecta"