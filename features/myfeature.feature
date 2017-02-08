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
    When I enter text "<Searchterm>" in the search box
    Then I tap on search button
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
      When I click on <linktext> in the link
      Then I print the URL of the new page


      Examples:
      |linktext|
      |Advertising|
      |Business   |
      |About      |
      |Privacy    |
      |Terms      |
      |Settings   |

  Scenario Outline: User should be able to load google in respective language when language link clicked.
        Given I enter "http://google.co.in" in broswer
        When I click on <linktext> in the link
        Then I wait for the Page to load
        Then I assert for the <text> in text
        Then I get <text> class name printed.
        Then I click on back button

        Examples:
        |linktext|          |text|
        |हिन्दी|              |भारत       |
        |বাংলা |              |ভারত       |

  Scenario Outline: User should be able to navigate to images and save an image

    Given I enter "http://google.co.in" in broswer
    Then I enter text "<Search>" in the search box
    Then I tap on search button
    Then I assert for the <linktext> in navbar
    Then I click on <linktext> in the navbar
    Then I fetch the visible links in that page
          


    Examples:
    |Search|       |linktext|
    |Iron Man|     |Images  |

    Scenario Outline: User should be able to know the weather and time on searching city from google home page
      Given I enter "http://google.co.in" in broswer
      Then I enter text "<Search>" in the search box
      When I tap on search button
      Then I enter "kc:/location/citytown:current weather" in data_attribute and print content
      Then I wait for the Page to load

      Examples:

      |Search|
      |Bangalore|
      |Mangalore|
      |Hyderabad|
      |Trivandrum|
      |Kochi     |
      |Munnar    |

      Scenario Outline: User should be able to know the time in several countries by typing the country name in Google search
        Given I enter "http://google.co.in" in broswer
        Then I enter text "<Search>" in the search box
        When I tap on search button
        Then I enter "kc:/location/citytown:local time" in data_attribute and print content
        Then I wait for the Page to load

        Examples:
        |Search|
        |Bangalore|
        |Seattle  |
        |NewYork  |
        |Lexington |
        |Tokyo  |
        |Sydney|
        |Paris    |






























