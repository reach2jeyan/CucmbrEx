Feature: To automate the flight application

  Background:
    Given I enter "www.google.co.in" in broswer
    When I enter text "flights" in the search box
    Then I tap on search button
    Then I tap on the "Flights" text
    Then I wait for the Page to load
    Then I assert for browser title Google Flights
    Then I enter text Mumbai in Where from field
    Then I enter text London in Where to field
    Then I click on from date
    Then I enter date "March 10" in from date field
    Then I enter date "March 14" in to date field
    Then I wait for the Page to load

  Scenario: automate flight application - Economy class
    Then I select "Premium Economy" from the dropdown list with classname "OMOBOQD-c-b OMOBOQD-n-g OMOBOQD-n-l"
    Then I wait for the Page to load
    Then I print the prices

  Scenario: automate flight application - Economy class dropdown- other options
    Then I select "Premium Economy" from the dropdown list with classname "OMOBOQD-c-b OMOBOQD-n-g OMOBOQD-n-l"
    Then I wait for the Page to load
    Then I print the prices
    Then I select "Business Class" from the dropdown list with classname "OMOBOQD-c-b OMOBOQD-n-g OMOBOQD-n-l"
    Then I wait for the Page to load
    Then I print the prices
    Then I select "First Class" from the dropdown list with classname "OMOBOQD-c-b OMOBOQD-n-g OMOBOQD-n-l"
    Then I wait for the Page to load
    Then I print the prices
