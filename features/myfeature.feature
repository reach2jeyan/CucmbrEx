Feature: Google page feature

  Scenario: Verify if Google page loaded on launch
    Given I enter "http://google.co.in" in broswer
    Then I wait for the Page to load
    Then I assert for the <logo-subtext> in class

  Scenario: Open google page and tap search button
    Given I enter "http://google.co.in" in broswer
    When I enter text "Search" in the search box
    Then I tap on search button

  Scenario Outline: Verify links with texts exists in footer and language bar
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
    |हिन्दी  |
    |বাংলা   |
    |తెలుగు  |
    |मराठी   |
    |தமிழ்   |
    |ગુજરાતી |
    |ಕನ್ನಡ   |
    |മലയാളം  |
    |ਪੰਜਾਬੀ  |


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

    Scenario Outline: User should be able to navigate to footer links and load the next page
      Given I enter "http://google.co.in" in broswer
      Then I click <footertext> in the footer bar
      Then I wait for the Page to load
      Then I get the URL of the page

      Examples:
      |footertext|
      |Advertising|
























