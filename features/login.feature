Feature: Login

  Como usuario (ya sea como admin o docente) del site
  Quiero poder logearme a la aplicacion.

  Scenario: Login Correcto
      When I browse the default page
      Then I should see "Login"
      And I fill the email with "admin@aulas.com"
      And I fill the password with "admin"
      And confirm the login
      Then I should see "admin@admin.com"

    Scenario: Login Incorrecto
      When I browse the default page
      Then I should see "Login"
      And I fill the email with "admin@aulas.com"
      And I fill the password with "erronea"
      And confirm the login
      Then I should see "login incorrecto"
