

Given(/^I have "(.*?)" aula in Aulas$/) do |arg1|
	visit '/pedidos/listar'
  page.should have_content(arg1)
end

Given(/^I have "(.*?)" in Aulas$/) do |arg1|
  page.should have_content(arg1)
end

When(/^I click "(.*?)"$/) do |link|
  click_button(link)
end

When(/^I click in "(.*?)" link "(.*?)"$/) do |number, link|
  page.all(:link, link)[number.to_i].click
end

Then(/^I complete the field Materia with "(.*?)"$/) do |arg1|
  fill_in('reserva[materia]', :with => arg1)
end
	

Then(/^I should go to Confirmar Pedido$/) do
  page.should have_content("Confirmar Pedido")
end

