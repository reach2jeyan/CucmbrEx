Feature: To automate the flight application

  Scenario: automate flight application
    Given I enter "http://google.co.in" in broswer
    When I enter text "flights" in the search box
    Then I tap on search button
    Then I tap on the "Flights" text
    Then I wait for the Page to load
    Then I assert for browser title Google Flights
    Then I enter text Mangalore in Where from field
    Then I enter text Bangalore in Where to field
    Then I click on from date
    Then I enter date "March 3" in from date field
    Then I enter date "March 25" in to date field
    Then I wait for the Page to load
    Then I print the prices
