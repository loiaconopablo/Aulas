Given(/^I am logged in as admin$/) do
  visit '/login'
  fill_in('user[email]', :with => 'admin@aulas.com')
  fill_in('user[password]', :with => 'admin')
  click_button('Login')
  page.should have_content('admin@aulas.com')
end

Given(/^I access the new docente page$/) do
  pending 
end

When(/^I fill the apellido with "(.*?)"$/) do |arg1|
  pending 
end

When(/^I fill the email with "(.*?)"$/) do |user_email|
  visit '/login'
  fill_in('user[email]', :with => user_email)
end

When(/^confirm the new docente$/) do
  pending 
end

When(/^I fill the nombre with "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
