Feature: Test feature

  Scenario: Open google page
    Given I enter "http://google.com" in broswer
    When I enter text "Search" in the search box
    Then I tap on search button