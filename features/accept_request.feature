Feature: Aceptar Peticiones/Reservas

  Como docente quiero que el sistema notifique al admin cada vez que solicito un aula.
  Como admin quiero poder ver las peticiones que los docentes realizaron de cada aula en particular.
  Como admin quiero poder aceptar la reserva de un aula.
  Como admin quiero que le llegue un mail avisandole al profesor que su reserva del aula fue aceptada.
  

  Background:
    Given I am logged in as admin
    #Given I have a peticion with name "Test Aula 101" by "Pepe"
   
  Scenario: Como docente pido aula y el sistema notifica al admin
    #Given I am logged in as docente
    #Given I access the aulas page
    #And I have "Test Aula 101" aula in Aulas
    #When I click in "1" link "Pedir"
    #Then I complete the field Materia with "epers"
    #When I click "Crear" 
    #Then I should see "Reserva realizada"
    #Then the admin should receive a mail with the pedido generated.
   
  Scenario: Ver peticiones de aulas
    Given I access the lista de reservas page
    Then I should see "Listado de Peticiones"
    #And I have "Test Aula 101" aula in Peticiones
    #And I should see "Pepe"

  Scenario: Aceptar reserva de un aula y el sistema notifica al docente
    #Given I access the lista de reservas page
    #Then I should see "Listado de Peticiones"
    #And I have "Test Aula 101" aula in Peticiones
    #Then I click in "1" link "Aceptar"
    #Then I should see "Reserva Aceptada"
    #Given I access the aulas page
    #And I have "101" aula in Aulas
    #And I should see "Pepe"
    #And I should see "Reservada"
    #Then the professor "Pepe" should receive a mail with the reserva confirmation.




