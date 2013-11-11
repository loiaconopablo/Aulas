Given(/^I am not logged$/) do
  #Cuando se inicia la sesion, no hay nadie logeado
end

Given(/^I access the docentes page$/) do
  visit 'users/listarDocentes'
end

Given(/^I access the aulas page$/) do
  visit	'/aulas/listar'
end
