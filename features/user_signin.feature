Feature: User sign in

  As a already registered user
  I want to sign in
  So I can use the application
  
  Scenario: Sign in with correct credentials
    Given I am already registered in the application
    When I visit the sign in page
    And I submit the Login form with correct credentials
    Then I should see the search page
    
  Scenario: Sign in with wrong credentials
    Given I am already registered in the application
    When I visit the sign in page
    And I submit the Login form with wrong credentials
    Then I should see a message "Invalid email or password."