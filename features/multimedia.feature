Feature: Test multimedia page

Scenario: Should open multimedia page
  Given the visitor is on the home page
  When he clicks on "Multimídia"
  Then the page should contain "Multimídia"
  And the page url should contain "multimidia"
  

  



