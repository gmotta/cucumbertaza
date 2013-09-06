Feature: This feature contains scenarios that will test the help page of http://espaco-da-crianca.herokuapp.com/ 

Scenario: Test the donation link
 Given The visitor is on the help page
 When he clicks on donation link
 #Then the donation page is displayed

 @wip
Scenario: Check if the how to help links works
  Given the visitor is on the home page
  When he clicks on "Como ajudar?"
  Then the how to help page is displayed 
