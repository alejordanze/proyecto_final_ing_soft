Feature: 
    Como jugador
    Quiero indicar al auto que avance
    Para que se desplace un pasos

Scenario: 
    Given visito la pagina home
    When ingreso en el campo "nombre" "Juan"
    And ingreso en el campo "columnas" 10 y en el campo "filas" 15
    And presiono el boton "Continuar"
    And ingreso el campo "cord_x" 1
    And ingreso el campo "cord_y" 1
    And ingreso el campo "orientation" "N"
    And ingreso el campo "sequence" "AAA"
    And presiono el boton "Simular"
    Then deberia ver "La secuencia es AAA"