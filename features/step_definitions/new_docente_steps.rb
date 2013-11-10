Given(/^I am logged in as admin$/) do
  visit '/login'
  fill_in('user[email]', :with => 'admin@aulas.com')
  fill_in('user[password]', :with => 'admin')
  click_button('Login')
  page.should have_content('admin@aulas.com')
end

Given(/^I access the new docente page$/) do
  visit '/registracion_profesor'
end

When(/^I fill the apellido with "(.*?)"$/) do |arg1|
  fill_in('user[lastname]', :with => arg1) 
end

When(/^I fill the email with "(.*?)"$/) do |user_email|
   fill_in('user[email]', :with => user_email)
end

When(/^confirm the new docente$/) do
  click_button('Dar de Alta') 
end

When(/^I fill the nombre with "(.*?)"$/) do |arg1|
 fill_in('user[name]', :with => arg1)
end
