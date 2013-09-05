Feature: Tests Activities and its sub pages

Scenario: Test if Activities is being shown on the url
  Given the visitor is on the home page
  When he clicks on "Atividades"
  Then the page url should contain "activities"

Scenario: Test if Activities is displaying on the home page
  Given the visitor is on the home page
  When he clicks on "Atividades"
  Then the page should contain "Conheça nossas atividades"

Scenario: Test if the user can click on Comunidade
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
  
