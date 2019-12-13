Feature: 
    Como jugador 
    Quiero dar una orientacion al auto
    Para que se mueva en esa direccion

Scenario:
    Given visito la pagina home
    When ingreso en el campo "nombre" "Juan"
    And ingreso en el campo "columnas" 10 y en el campo "filas" 15
    And ingreso el campo "cant_autos" 1
    And presiono el boton "Continuar"
    And ingreso el campo "cord_x_0" 1
    And ingreso el campo "cord_y_0" 2
    And ingreso el campo "orientation_0" "N"
    And ingreso el campo "sequence_0" "IAIAIAIAA"
    And presiono el boton "Simular"
    Then deberia ver "La orientacion final fue N" 

Scenario:
    Given visito la pagina home
    When ingreso en el campo "nombre" "Juan"
    And ingreso en el campo "columnas" 10 y en el campo "filas" 15
    And ingreso el campo "cant_autos" 1
    And presiono el boton "Continuar"
    And ingreso el campo "cord_x_0" 1
    And ingreso el campo "cord_y_0" 2
    And ingreso el campo "orientation_0" "S"
    And ingreso el campo "sequence_0" "IAIAIAIAA"
    And presiono el boton "Simular"
    Then deberia ver "La orientacion final fue S" 