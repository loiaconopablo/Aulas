Feature: Crear Aula

  Como admin del site
  Quiero poder crear las aulas
  Para que luego esten disponibles y puedan ser reservadas

  Background:
    Given I am logged in as admin
  
  Scenario: Crear nueva aula y aceptar
    Given I access the new aula page
    When I fill all requeriments correctly with name "Aula prueba 1"
    And confirm the new aula    
    Then I should see "Aula prueba 1" in Aulas

  Scenario: Crear nueva aula y cancelar
    Given I access the new aula page
    When I fill all requeriments correctly with name "Aula prueba 2"
    And cancel the new aula    
    Then I should not see "Aula prueba 2" in Aulas

  Scenario: Crear nueva aula y aceptar sin completar los requerimientos
    Given I access the new aula page
    When I fill all requeriments incorrectly with name "Aula prueba 3"
    And confirm the new aula
		Then I should see "Completar correctamente los campos obligatorios"   
    Then I should not see "Aula prueba 3" in Aulas


