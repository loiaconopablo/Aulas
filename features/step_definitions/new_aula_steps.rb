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
	click_button('Aceptar')
end

Then(/^I should see "(.*?)" in Mis Aulas$/) do |nombre|
# Deberia ser algo como:::
 visit 'listar'
 page.should have_content(nombre)
end



