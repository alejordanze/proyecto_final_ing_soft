Feature: 
    Como jugador
    Quiero indicar al auto que avance
    Para que se desplace un paso


Scenario: 
    Given visito la pagina simuladora
    When ingreso en el campo "sequence" "IDIDIAAA"
    And presiono el boton "Simular"
    Then deberia ver el mensaje "La secuencia es IDIDIAAA"