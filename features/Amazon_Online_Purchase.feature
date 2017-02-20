Feature: Amazon Online purchase-Happy path

  Scenario: User should be able to buy the amazon product(Happy path)
    Given I enter "www.amazon.in" in broswer
    Then I wait for the Page to load
    When I enter "mobiles" using div id "twotabsearchtextbox"
    Then I click on Enter key on keyboard
    Then I wait for the Page to load
    Then I click on link with text "Moto G Play, 4th Gen (Black)"
    Then I wait for the Page to load
    Then I close browser tab with title "Amazon.in: mobiles - Smartphones & Basic Mobiles / Mobiles & Accessories: Electronics"
    Then I assert for browser title <Moto G4 Play Price>
    Then I wait for the Page to load
    Then I click on button with text "Add to Cart"
    Then I click on link with text "Proceed to checkout (1 item)"

    Then I assert for browser title Amazon Sign In
    Then I assert for the text field with div id "ap_email"
    When I enter "reach2jeyan@hotmail.com" using div id "ap_email"
    And I enter "jeyy1988" using div id "ap_password"
    Then I click on Enter key on keyboard
    Then I wait for the Page to load
    Then I assert for browser title Enter the delivery address