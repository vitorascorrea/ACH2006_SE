Dado(/^que eu estou na página inicial$/) do
  visit 'http://localhost:8000'
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

Quando(/^eu clicar no link "([^"]*)"$/) do |link|
  click_link(link, match: :first)
end

Quando(/^eu clicar no botão "([^"]*)"$/) do |botao|
  click_button(botao, match: :first)
end

Quando(/^eu clicar no span "([^"]*)"$/) do |span|
  page.find(:css, span, match: :first).click
end

Então(/^eu deveria ver a nota "([^"]*)"$/) do |nota|
  expect(page).to have_content(nota)
end

Então(/^eu deveria ver o titulo "([^"]*)"$/) do |titulo|
  expect(page).to have_content(titulo)
end
