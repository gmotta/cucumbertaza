Feature: This feature contain scenarios that will test the home page of http://espaco-da-crianca.herokuapp.com/

Scenario: Test the welcome banner
  Given the visitor is on the home page
  Then welcome banner is displayed

Scenario: Test if Facebook link opens the facebook page
  Given the visitor is on the home page 
  When he clicks on facebook link
  Then the facebook page is displayed

Scenario: Test if sponsors logos are being displayed
  Given the visitor is on the home page
  When he clicks on "Patrocínio"
  Then all logos of the sponsors must be displayed

Scenario: Test if contact information is being displayed on the footer
  Given the visitor is on the home page
  Then contact information is displayed on the footer (Blog, Facebook, YouTube, e-Mail, Phone)

