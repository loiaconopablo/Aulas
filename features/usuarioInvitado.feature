Feature: Usuario Invitado o Publico

Como usuario invitado al sistema, 
quiero poder ver la lista de aulas con su estado y los docentes registrados

  Background:
    Given I am not logged
  
  Scenario: Ver la lista de Docentes
    When I browse the default page
    Given I access the docentes page
    Then I should see "Listado de Docentes" 
    And I should see "Nico"
    And I should see "Paez"
    And I should see "nico@gmail.com"

 Scenario: Ver la lista de Aulas
    When I browse the default page
    Given I access the aulas page
    Then I should see "Listado de Aulas" 

