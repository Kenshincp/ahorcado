Feature: Adivinar un numero de dos digitos

Scenario: adivinar el numero secreto
    Given que iniciamos el juego
    When adivine con "10"
    Then debe mostrarme "Ganaste!"

Scenario: adivinar el numero secreto
    Given que iniciamos el juego
    When adivine con "26"
    Then debe mostrarme "Perdiste!"