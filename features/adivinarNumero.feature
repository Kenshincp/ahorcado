Feature: Adivinar un numero de dos digitos

Scenario: adivinar el numero secreto
    Given que iniciamos el juego
    When adivine con "10"
    Then debe mostrarme "Ganaste!"

Scenario: fallar al adivinar el numero secreto
    Given que iniciamos el juego
    When adivine con "26"
    Then debe mostrarme "26 - nada coincide"

Scenario: Acertar un número
    Given que iniciamos el juego
    When adivine con "02"
    Then debe mostrarme "02 - 1 correcto"

Scenario: Acertar dos número
    Given que iniciamos el juego
    When adivine con "01"
    Then debe mostrarme "01 - 2 correcto"