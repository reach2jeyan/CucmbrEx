Feature: To automate the flight application

  Background:
    Given I enter "www.google.co.in" in broswer
    When I enter text "flights" in the search box
    Then I tap on search button
    Then I tap on the "Flights" text
    And I wait for the Page to load
    Then I assert for browser title Google Flights
    And I enter text Mumbai in Where from field
    And I enter text London in Where to field
    Then I click on from date
    When I enter date "March 10" in from date field
    And I enter date "March 14" in to date field
    Then I wait for the Page to load

  Scenario: automate flight application - Economy class dropdown- other options
    Then I click on the drop down box with div class "OMOBOQD-c-b OMOBOQD-n-g OMOBOQD-n-l"
    When I select "Economy Class" in the drop down box with xpath "/html/body/div[3]/div/div/div[1]/div"
    And I wait for the Page to load
    Then I print the prices

  Scenario: automate flight application - Premium Economy dropdown- other options
    Then I click on the drop down box with div class "OMOBOQD-c-b OMOBOQD-n-g OMOBOQD-n-l"
    When I select "Premium Economy" in the drop down box with xpath "/html/body/div[3]/div/div/div[2]/div"
    And I wait for the Page to load
    Then I print the prices

  Scenario: Automate flight application - Business class drop down - other options
    Then I click on the drop down box with div class "OMOBOQD-c-b OMOBOQD-n-g OMOBOQD-n-l"
    When I select "Business class" in the drop down box with xpath "/html/body/div[3]/div/div/div[3]"
    And I wait for the Page to load
    Then I print the prices

  Scenario: automate flight application - First class dropdown- other options
    Then I click on the drop down box with div class "OMOBOQD-c-b OMOBOQD-n-g OMOBOQD-n-l"
    When I select "Business class" in the drop down box with xpath "/html/body/div[3]/div/div/div[4]/div"
    And I wait for the Page to load
    Then I print the prices


