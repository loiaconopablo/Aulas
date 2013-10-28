Feature: Nuevo Docente

  Como admin del site
  Quiero poder dar de alta docentes
  Para que estos puedan reservas las aulas disponibles

  Background:
    Given I am logged in as admin
  
  Scenario: Crear nuevo docente
    Given I access the new docente page
    When I fill the nombre with "Nico"
    And I fill the apellido with "Paez"
    And I fill the email with "npaez@gmail.com"
    And confirm the new docente    
    Then I should see "Docente creado"
    And I should see "Nico" in Profesores
    And I should see "Paez" in Profesores
    And I should see "npaez@gmail.com" in Profesores