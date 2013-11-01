Feature: Login

  Como usuario (ya sea como admin o docente) del site
  Quiero poder logearme a la aplicacion.

  Scenario: Login Correcto
      When I browse the default page
      Then I should see "Login"
      And I fill the email with "admin@aulas.com"
      And I fill the password with "admin"
      And confirm the login
      Then I should see "admin@aulas.com"
      Then I should see "Login Correcto"

  Scenario: Login Incorrecto
      When I browse the default page
      Then I should see "Login"
      And I fill the email with "admin@aulas.com"
      And I fill the password with "erronea"
      And confirm the login
      Then I should see "Credenciales Invalidas"

  Scenario: Ver Opciones como admin
      Given I am logged in as admin
      Then I should see "Alta Docente"
      And I should see "Crear Aula"

  Scenario: Ver Opciones como profesor
      Given I am logged in as profesor
      Then I should not see "Alta Docente"
      And I should not see "Crear Aula"
