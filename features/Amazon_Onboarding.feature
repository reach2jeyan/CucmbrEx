Feature: User Account creation with Amazon


  Scenario: User should be able to create an account in Amazon(HappyPath)
    Given I enter "www.amazon.in" in broswer
    Then I click on "nav-xshop-container" with text "Your Amazon.in" using div id
    Then I wait for the Page to load
    Then I assert for browser title <Amazon Sign in>
    Then I click on button with text "Create your Amazon account"
    Then I assert for the text "Your name" in page
    Then I enter Customer Name "Karen Page" using div label "ap_customer_name"


