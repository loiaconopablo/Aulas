Given(/^I am logged in as admin$/) do
  visit '/login'
  fill_in('user[email]', :with => 'admin@aulas.com')
  fill_in('user[password]', :with => 'admin')
  click_button('Login')
  page.should have_content('admin@aulas.com')
end

Given(/^I access the new docente page$/) do
  visit '/registracion_docente'
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

Then(/^I should receive a mail with user info$/) do
  mail_store = "#{Padrino.root}/tmp/emails"
  file = File.open("#{mail_store}/loiaconopablo@gmail.com", "r")
  content = file.read
  content.include?("Pablo").should be true
  content.include?("Suarez").should be true
  content.include?("loiaconopablo@gmail.com").should be true
end
