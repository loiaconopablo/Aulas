Given(/^I access the new aula page$/) do
  visit 'aulas/new'
end

When(/^I fill all requeriments correctly with name "(.*?)"$/) do |nombre|
  fill_in('aula[nombre]', :with => nombre)
  fill_in('aula[capacidad]', :with => "10")
end

Then(/^I should see "(.*?)" in Aulas$/) do |nombre|
	page.should have_content("Aula creada")
  page.should have_content(nombre)
end

Then(/^I should not see "(.*?)" in Aulas$/) do |nombre|
  page.should have_no_content(nombre)
end


When(/^confirm the new aula$/) do
	click_button('Aceptar')
end

When(/^cancel the new aula$/) do
	click_link('Cancelar')
end

When(/^I fill all requeriments incorrectly with name "(.*?)"$/) do |nombre|
  fill_in('aula[nombre]', :with => nombre)	
end

 



