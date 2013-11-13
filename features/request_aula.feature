Feature: Pedir Aula

	Como docente, 
	quiero ver el listado de aulas y poder pre-reservar las que desee 
	para que luego el administrador analize esos pedidos.

  Background:
    Given I am logged in as docente
  
  Scenario: Intentar reservar un aula con estado disponible
    Given I access the aulas page
    And I have "Listado de Aulas" in Aulas
    And I have "37b" aula in Aulas
    When I click "Pedir"  
   # Then I should go to Confirmar Pedido		
    

  Scenario: Intentar reservar un aula con estado reservada
    Given I access the aulas page
    And I have "60" aula in Aulas
    When I click "Pedir"  
 #   Then I should see "El aula ya se encuentra reservada"

  Scenario: Reservar un aula con estado disponible
    Given I access the aulas page
    And I have "37b" aula in Aulas
    When I click "Pedir"  
  #  Then I should see "Materia"
  #  And I should see "Observaciones"

