Feature: User sign up

  As a non user
  I want to sign up
  So I can use the application
  

  Scenario: Signup user
    Given I am not already registered
    When I visit the sign up page
    And I submit the form with my details
    Then I should see the search page
    
    
  Scenario: Already registered
    Given I am already registered in the application
    When I visit the sign up page
    And I submit the form with my details
    Then I should see a message "Email has already been taken"
    