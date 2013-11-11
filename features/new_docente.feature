Feature: Nuevo Docente

  Como admin del site
  Quiero poder dar de alta docentes
  Para que estos puedan reservas las aulas disponibles

  Background:
    Given I am logged in as admin
  
  Scenario: Crear nuevo docente
    Given I access the new docente page
    Then I should see "Registracion de nuevo profesor" 
    When I fill the nombre with "Pablo"
    And I fill the apellido with "Suarez"
    And I fill the email with "loiaconopablo@gmail.com"
    And confirm the new docente    
    Then I should see "Docente creado"
    Then I should receive a mail with user info

 Scenario: Crear nuevo docente con falta de campos
    Given I access the new docente page
    Then I should see "Registracion de nuevo profesor" 
    When I fill the nombre with "Nico"
    And I fill the email with "npaez@gmail.com"
    And confirm the new docente    
    Then I should see "Completar todos los campos"

    
