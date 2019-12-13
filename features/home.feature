Feature: 
    Como jugador
    Quiero ver un saludo  
    Para sentirme a gusto

Scenario: 
    Given visito la pagina home
    Then deberia ver el mensaje "Bienvenido al simulador"

Scenario: 
    Given visito la pagina home
    When ingreso en el campo "nombre" "Juan"
    And presiono el boton "Continuar"
    Then deberia ver el mensaje "Bienvenido al simulador Juan"