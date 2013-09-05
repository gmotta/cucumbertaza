Feature: Tests Activities and its sub pages

Scenario: Test if Activities is being shown on the url
  Given the visitor is on the home page
  When he clicks on "Atividades"
  Then the page url should contain "activities"

Scenario: Test if Activities is displaying on the home page
  Given the visitor is on the home page
  When he clicks on "Atividades"
  Then the page should contain "Conheça nossas atividades"

Scenario: Test if the user can click on Comunidades
  Given the visitor is on the home page
  When he clicks on "Atividades"
  And he clicks on "Comunidades"
  Then the page should contain "Comunidade"
  Then the page url should contain "comunidade"

Scenario: Test if the user can click on Famílias
  Given the visitor is on the home page
  When he clicks on "Atividades"
  And he clicks on "Famílias"
  Then the page should contain "Atividades com as Famílias"
  Then the page url should contain "familias"

Scenario: Test if the user can click on Crianças
  Given the visitor is on the home page
  When he clicks on "Atividades"
  And he clicks on "Crianças"
  Then the page should contain "Crianças"
  Then the page url should contain "criancas"

Scenario: Test if the user is redirected to the blog when he clicks on Educação por Princípios.
  Given the visitor is on the home page
  When he clicks on "Atividades"
  And he clicks on "Crianças"
  And he clicks on "Educação por Princípios"
  Then the page url should contain "espacocrianca-arh.blogspot.com.br"
  And the page url should contain "/2013/06/espaco-da-crianca-arh-implementa.html"
  And the page title should contain "Espaço da Criança-ARH implementa Educação por Princípios"

  Scenario: Test if the user can click on the comunidades image
  Given the visitor is on the home page
  When he clicks on "Atividades"
  And he clicks on the "Comunidades" image
  Then the page should contain "Comunidade"
  Then the page url should contain "comunidade"
  
