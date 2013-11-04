Feature: Crear Aula

  Como admin del site
  Quiero poder crear las aulas
  Para que luego esten disponibles y puedan ser reservadas

  Background:
    Given I am logged in as admin
  
  Scenario: Crear nueva aula
    Given I access the new aula page
    When I fill the nombre with "Aula TPI"
    When I fill the capacidad with "30"
    And confirm the new aula    
    Then I should see "Aula Creada"
    And I should see "Aula TPI" in Mis Aulas
