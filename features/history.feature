Feature: This feature contain scenarios that will test the home page of http://espaco-da-crianca.herokuapp.com/historia

  Scenario: Test our history message
    Given the visitor is on the home page
    When the visitor click on history
    Then the page url should contain "historia"
    #Then the history page is displayed
