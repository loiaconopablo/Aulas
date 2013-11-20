Given(/^I have a peticion with name "(.*?)" by "(.*?)"$/) do |nombre_aula, nombre_docente|
	docente = Docente.create(:email => 'test@test.com',
                   :name => nombre_docente, 
                   :lastname => 'Test',
                   :type => 'docente', 
                   :password => "test") 
                   
  aula = Aula.create(:nombre => nombre_aula,
                      :estado => false,
                      :capacidad => 20)
                      
  reserva = Reserva.create(:materia => 'Testing',
  												 :observaciones => '',
 													 :user => docente,
 													 :aula => aula, 											
  											  )                      
end

Then(/^the admin should receive a mail with the pedido generated\.$/) do
  mail_store = "#{Padrino.root}/tmp/emails"
  file = File.open("#{mail_store}/admin@aulas.com", "r")
  content = file.read
  content.include?("Gestion De Aulas: Nuevo Pedido de Aula").should be true
  content.include?("Test Aula 101").should be true
  content.include?("Nico").should be true
  content.include?("nico@gmail.com").should be true
  content.include?("Epers").should be true
end

Given(/^I access the lista de reservas page$/) do
  visit('reservas/listar')
end

Then(/^I have "(.*?)" aula in Peticiones$/) do |arg1|
  page.should have_content(arg1)
end

Then(/^the professor "(.*?)" should receive a mail with the reserva confirmation\.$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

