Feature: 
    Como jugador
    Quiero especificar el tamano de la superficie
    Para que los autos se desplacen en esa dimension

Scenario: 
    Given visito la pagina home
    When ingreso en el campo "columnas" 10 y en el campo "filas" 15
    And presiono el boton "Continuar"
    Then deberia ver el mensaje "La dimension actual es de 10x15"

Scenario:
    Given visito la pagina home 
    When ingreso en el campo "columnas" 0 y en el campo "filas" 0
    And ingreso el campo "cant_autos" 1
    And presiono el boton "Continuar"
    Then deberia ver el mensaje "No se puede simular en una superficie con esas dimensiones"

Scenario: 
    Given visito la pagina home 
    When ingreso en el campo "columnas" -1 y en el campo "filas" -2
    And ingreso el campo "cant_autos" 1
    And presiono el boton "Continuar"
    Then deberia ver el mensaje "No se puede simular en una superficie con esas dimensiones"