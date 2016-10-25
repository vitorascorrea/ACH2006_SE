Dado(/^que eu estou na página inicial$/) do
  visit '/'
end

Quando(/^eu preencher o campo "([^"]*)" com "([^"]*)"$/) do |campo, valor|
  fill_in campo, :with => valor
end

Quando(/^eu pressionar a tecla Enter$/) do
  find('#ingredient_name').native.send_keys(:return)
end

Então(/^eu deveria ver o ingrediente "([^"]*)"$/) do |valor|
  expect(page).to have_content(valor)
end

Então(/^eu não deveria ver o ingrediente "([^"]*)"$/) do |valor|
  expect(page).to_not have_content(valor)
end
