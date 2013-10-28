Feature: Login

  Como admin del site
  Quiero poder logearme a la aplicacion
  Para poder crear las aulas, ver y aprobar las peticiones

  Scenario: Navegar la pagina de inicio
      When I browse the default page
      Then I should see "login"
      And I fill the email with "admin@admin.com"
      And I fill the password with "root"
      And confirm the login
      Then I should see "admin@admin.com"
