Feature: Adivina las letras

Scenario: ver las rayitas
    Given que iniciamos el juego
    Then debe mostrarme "_ _ _ _ _ _ _"

Scenario: adivina una letra
    Given que iniciamos el juego
    When adivina con "a"
    Then debe mostrarme "_ _ _ _ a _ _"

Scenario: adivina una letra incorrecta
    Given que iniciamos el juego
    When adivina con "b"
    Then debe mostrarme "_ _ _ _ _ _ _"

Scenario: enviar mas de una letra
    Given que iniciamos el juego
    When adivina con "ba"
    Then debe mostrarme "Debes ingresar una letra"

Scenario: adivina tres letras
    Given que iniciamos el juego
    When adivina con "a"
    And adivina con "p"
    And adivina con "e"
    Then debe mostrarme "p e _ _ a _ _"

    Scenario: ver número de intentos
    Given que iniciamos el juego
    Then debe mostrarme "3 intentos"