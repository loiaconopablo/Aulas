When(/^I browse the default page$/) do
  visit '/'
  page.should have_content('Bienvenido al sistema de gestion de Aulas')
  #visit '/'
end

Then(/^I should see "(.*?)" in Index/) do |content|
	visit '/'
  page.should have_content('Login')
end

When(/^I fill the password with "(.*?)"$/) do |user_password|
  fill_in('user[password]', :with => user_password)
end

Then(/^confirm the login$/) do
  click_button('Login')
end

Then(/^I should see "(.*?)" in HomePage$/) do |arg1|
	visit '/'
  page.should have_content(arg1)
end

Given(/^I am logged in as profesor$/) do
 visit '/login'
  fill_in('user[email]', :with => 'nico@gmail.com')
  fill_in('user[password]', :with => 'nico')
  click_button('Login')
  page.should have_content('nico@gmail.com')
end
