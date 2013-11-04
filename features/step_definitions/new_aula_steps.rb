Given(/^I access the new aula page$/) do
  visit 'aulas/new'
end

When(/^I fill the nombre with "(.*?)"$/) do |nombre|
  fill_in('aula[nombre]', :with => nombre)
end

When(/^I fill the capacidad with "(.*?)"$/) do |cantidad|
  fill_in('aula[capacidad]', :with => cantidad)
end

When(/^confirm the new aula$/) do
	pending
	#falta el modelo para poder persistir el aula
  #click_button('Aceptar')
end

Then(/^I should see "(.*?)" in Mis Aulas$/) do |nombre|
  pending
	#depende del anterior
end



