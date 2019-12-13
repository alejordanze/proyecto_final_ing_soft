Feature: 
    Como jugador
    Quiero indicar al auto que avance
    Para que se desplace un paso


Scenario: 
    Given visito la pagina simuladora
    When ingreso en el campo "sequence" "AAA"
    And presiono el boton "Simular"
    Then deberia ver "No se puede simular en una superficie con esas dimensiones"