Feature: 
    Como jugador
    Quiero especificar el tamano de la superficie
    Para que los autos se desplacen en esa dimension

Scenario: 
    Given visito la pagina simuladora
    When ingreso en el campo "columnas" 10 y en el campo "filas" 15
    And presiono el boton "Simular"
    Then deberia ver el mensaje "La dimension actual es de 10x15"