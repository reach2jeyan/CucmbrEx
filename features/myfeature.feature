Feature: Test feature

  Scenario: Open google page
    Given I enter "http://google.co.in" in broswer
    When I enter text "Search" in the search box
    Then I tap on search button

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



