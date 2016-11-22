# language: pt

Funcionalidade: Abrir a pagina de uma receita
  Para eu visualizar melhor a receita
  Como um usuário
  Eu quero abrir a página de receita

  @javascript
  Cenario: Abertura com sucesso
    Dado que eu estou na página inicial
    Quando eu preencher o campo "ingredient_name" com "Batata"
    E eu pressionar a tecla Enter
    E eu clicar no link "Surpreenda-me!"
    E eu clicar no botão "Ver receita"
    Então eu deveria ver o titulo "Modo de preparo"
