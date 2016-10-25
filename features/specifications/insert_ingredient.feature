# language: pt

Funcionalidade: Realizar a inserção de um ingrediente
  Para eu criar uma lista de ingredientes
  Como um usuário
  Eu quero inserir um ingrediente digitando seu nome

  @javascript
  Cenario: Inserção com sucesso
    Dado que eu estou na página inicial
    Quando eu preencher o campo "ingredient_name" com "ovo"
    E eu pressionar a tecla Enter
    Então eu deveria ver o ingrediente "ovo"

    @javascript
    Cenario: Inserção sem sucesso
      Dado que eu estou na página inicial
      Quando eu preencher o campo "ingredient_name" com "\n"
      E eu pressionar a tecla Enter
      Então eu não deveria ver o ingrediente "\n"
