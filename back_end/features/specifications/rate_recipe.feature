# language: pt

Funcionalidade: Dar nota à uma receita
  Para eu dar nota à uma receita
  Como um usuário
  Eu quero clicar e dar a nota em uma receita

  @javascript
  Cenario: Nota mais alta
    Dado que eu estou na página inicial
    Quando eu preencher o campo "ingredient_name" com "Batata"
    E eu pressionar a tecla Enter
    E eu clicar no link "Surpreenda-me!"
    E eu clicar no span "#rate_5"
    Então eu deveria ver a nota "5"

    @javascript
    Cenario: Nota mais baixa
      Dado que eu estou na página inicial
      Quando eu preencher o campo "ingredient_name" com "Batata"
      E eu pressionar a tecla Enter
      E eu clicar no link "Surpreenda-me!"
      E eu clicar no span "#rate_1"
      Então eu deveria ver a nota "1"

    @javascript
    Cenario: Nota dentro da tela
      Dado que eu estou na página inicial
      Quando eu preencher o campo "ingredient_name" com "Batata"
      E eu pressionar a tecla Enter
      E eu clicar no link "Surpreenda-me!"
      E eu clicar no botão "Ver receita"
      Então eu deveria ver o titulo "Modo de preparo"
      E eu clicar no span "#rate_1"
      Então eu deveria ver a nota "1"
