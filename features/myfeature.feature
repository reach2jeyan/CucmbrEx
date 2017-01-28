Feature: Google page feature

  Scenario: Verify if Google page loaded on launch
    Given I enter "http://google.co.in" in broswer
    Then I wait for the Page to load
    Then I assert for the <logo-subtext> in class

  Scenario: Open google page and tap search button
    Given I enter "http://google.co.in" in broswer
    When I enter text "Search" in the search box
    Then I tap on search button

  Scenario Outline: Verify links with texts exists in footer
    Given I enter "http://google.co.in" in broswer
    Then I wait for the Page to load
    Then I assert for the <text> in text


    Examples:
    |text|
    |Advertising|
    |Business   |
    |About      |
    |Privacy    |
    |Terms      |
    |Settings   |


  Scenario Outline: User should be able to Search google with various keywords
    Given I enter "http://google.co.in" in broswer
    When I enter text <Searchterm> in the search box
    Then I tap on the search button
    Then I wait for the Page to load

    Examples:

      | Searchterm |
      | Panda      |
      |Natilee Holloway|
      |Avengers        |
      | Angry Birds    |
      |Minions         |
      |Amazon          |








