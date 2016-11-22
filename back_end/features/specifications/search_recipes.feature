# language: pt

Funcionalidade: Pesquisar receitas
  Para eu pesquisar receitas com base em meus ingredientes
  Como um usuário
  Eu quero clicar em um botão e aparecer receitas com meus ingredientes

  @javascript
  Cenario: Pesquisa retornando uma ou mais receitas
    Dado que eu estou na página inicial
    Quando eu preencher o campo "ingredient_name" com "Batata"
    E eu pressionar a tecla Enter
    E eu clicar no link "Surpreenda-me!"
    Então eu deveria ver o titulo "Batata"
