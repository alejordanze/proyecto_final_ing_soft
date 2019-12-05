Feature: 
    Como jugador
    Quiero especificar el tamano de la superficie
    Para que los autos se desplacen en esa dimension

Scenario: 
    Given visito la pagina simuladora
    When ingreso en el campo "columnas" 10 y en el campo "filas" 15
    And presiono el boton "Simular"
    Then deberia ver el mensaje "La dimension actual es de 10x15"

Scenario: 
    Given visito la pagina simuladora
    When ingreso en el campo "cord_x" 3 y en el campo "cord_y" 4
    And presiono el boton "Simular"
    Then deberia ver el mensaje "La posicion inicial es de 3,4"

Scenario: 
    Given visito la pagina simuladora
    When ingreso en el campo "sequence" "IDIDIAAA"
    And presiono el boton "Simular"
    Then deberia ver el mensaje "La secuencia es IDIDIAAA"