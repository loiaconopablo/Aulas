Given(/^I access the Pedir Aula page$/) do
   page.should have_content("Pedir Aula")
end

Given(/^I have "(.*?)" aula in Aulas$/) do |arg1|
	visit '/pedidos/listar'
  page.should have_content(arg1)
end

When(/^I click "(.*?)"$/) do |link|
  first(:link, link).click
end

Then(/^I should go to Confirmar Pedido$/) do
  visit '/pedidos/confirmar'
end

