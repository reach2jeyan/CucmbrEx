#Feature: Automating Amazon India website.

  #Background:
    #Given I enter "www.amazon.com" in broswer


  #Scenario: User in India, goes to Amazon.com and ensure redirect popup appears.
    #Then I wait for the Page to load
    #Then I assert for the <redir-title-text> in class in class
    #Then I print the text present in the pop up

  #Scenario: User in India, clicks on Amazon India redirect option and ensure, Amazon India page is launched.
    #Then I wait for the Page to load
    #When I assert for the <redir-title-text> in class in class
    #Then I print the text present in the pop up
    #When I click "Go to Amazon.in" on the popup
    #Then I print the URL of the new page

  #Scenario: User In India, clicks on Amazon.com and ensure, Amazon India is not displayed.
   # Then I wait for the Page to load
    #Then I assert for the <redir-title-text> in class in class
    #Then I print the text present in the pop up
    #Then I click "Stay on Amazon.com" on the popup
    #Then I print the URL of the new page

