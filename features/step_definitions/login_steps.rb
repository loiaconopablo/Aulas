When(/^I browse the default page$/) do
  visit '/'
  page.should have_content('Bienvenido al sistema de gestion de Aulas')
  #visit '/'
end

Then(/^I should see "(.*?)" in Index/) do |content|
	visit '/'
  page.should have_content('Login')
end

Then(/^I fill the password with "(.*?)"$/) do |arg1|
  fill_in('admin[password]', :with => 'Passw0rd!')
end

Then(/^confirm the login$/) do
  pending 
end

