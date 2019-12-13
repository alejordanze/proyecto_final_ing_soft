Feature: 
    Como jugador
    Quiero indicar la posición inicial
    Para que inicie su recorrido en esa posición

Scenario: 
    Given visito la pagina simuladora
    When ingreso en el campo "columnas" 10 y en el campo "filas" 15
    And presiono el boton "Continuar"
    Then deberia ver el mensaje "La dimension actual es de 10x15"
