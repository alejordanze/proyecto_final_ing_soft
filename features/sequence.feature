Feature: 
    Como jugador
    Quiero indicar al auto que avance
    Para que se desplace unos pasos

Scenario: 
    Given visito la pagina home
    When ingreso en el campo "nombre" "Juan"
    And ingreso en el campo "columnas" 10 y en el campo "filas" 15
    And presiono el boton "Continuar"
    Then deberia ver el mensaje "Tienes que introducir una cantidad de autos"

Scenario:
    Given visito la pagina home
    When ingreso en el campo "nombre" "Juan"
    And ingreso en el campo "columnas" 10 y en el campo "filas" 15
    And ingreso el campo "cant_autos" 1
    And presiono el boton "Continuar"
    And ingreso el campo "cord_x_0" 1
    And ingreso el campo "cord_y_0" 1
    And ingreso el campo "orientation_0" "N"
    And ingreso el campo "sequence_0" "AAA"
    And presiono el boton "Simular"
    Then deberia ver el mensaje "La secuencia fue AAA" 

Scenario:
    Given visito la pagina home
    When ingreso en el campo "nombre" "Miguel"
    And ingreso en el campo "columnas" 10 y en el campo "filas" 15
    And ingreso el campo "cant_autos" 1
    And presiono el boton "Continuar"
    And ingreso el campo "cord_x_0" 1
    And ingreso el campo "cord_y_0" 1
    And ingreso el campo "orientation_0" "N"
    And ingreso el campo "sequence_0" "IAIA"
    And presiono el boton "Simular"
    Then deberia ver el mensaje "La secuencia fue IAIA" 
