Feature: User Account creation with Amazon

  Background:
    Given I enter "www.amazon.in" in broswer

  Scenario: User should be able to create an account with phone number in Amazon(HappyPath)
    And I click on "nav-xshop-container" with text "Your Amazon.in" using div id
    Then I wait for the Page to load
    Then I assert for browser title <Amazon Sign in>
    When I click on button with text "Create your Amazon account"
    Then I assert for the text "Your name" in page
    When I enter "Karen Page" using div id "ap_customer_name"
    And I enter "7012581399" using div id "ap_phone_number"
    And I enter "jeyy1988" using div id "ap_password"
    When I click on button with text "Continue"
    Then I assert for browser title <Amazon Phone verification>


  Scenario Outline: User should be able to create an account with email address in Amazon.in(HappyPath)
    And I click on "nav-xshop-container" with text "Your Amazon.in" using div id
    Then I wait for the Page to load
    Then I assert for browser title <Amazon Sign in>
    When I click on button with text "Create your Amazon account"
    Then I assert for the text "Your name" in page
    When I enter "Veronica" using div id "ap_customer_name"
    When I click on link with text "Use your email instead"
    Then I assert for the text field with div id "ap_email"
    When I enter "Email" using div id "ap_email"
    And I enter "jeyy1988" using div id "ap_password"
    When I click on button with text "Create your Amazon account"
    Then I assert for browser title <Your amazon.in>

    Examples:
      |Email|
      |reach2jeyan@yahoo.com|
      |reach2jeyan@rediffmail.com|
      |karenpage@yahoo.com       |

  Scenario: User should not be able to onboard with require fields missing(email and phone scenario)
    And I click on "nav-xshop-container" with text "Your Amazon.in" using div id
    Then I wait for the Page to load
    Then I assert for browser title <Amazon Sign in>
    When I click on button with text "Create your Amazon account"
    Then I assert for the text "Your name" in page
    Then I enter "Elektra" using div id "ap_customer_name"
    When I click on link with text "Use your email instead"
    Then I assert for the text field with div id "ap_email"
    Then I enter "" using div id "ap_email"
    When I enter "jeyy1988" using div id "ap_password"
    And I click on button with text "Create your Amazon account"
    Then I assert for the text <Enter your e-mail> in page
    Then I click on back button
    And I click on button with text "Create your Amazon account"
    Then I assert for the text "Your name" in page
    When I enter "Elektra" using div id "ap_customer_name"
    And I enter "" using div id "ap_phone_number"
    And I enter "jeyy1988" using div id "ap_password"
    When I click on button with text "Continue"
    Then I assert for the text <Enter your mobile number> in page
    Then I click on back button
    When I click on button with text "Create your Amazon account"
    Then I enter "" using div id "ap_customer_name"
    And I enter "7012581399" using div id "ap_phone_number"
    And I enter "jeyy1988" using div id "ap_password"
    When I click on button with text "Continue"
    Then I assert for the text <Enter your name> in page
    Then I wait for the Page to load













