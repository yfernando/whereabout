Feature: Activity 

  Background: 
    Given there are 2 users on the system
    And they are both friends
    And the last user creates a new category
    And the last user creates a new poi

  Scenario: View my Friend's activity
    Given I am logged in as first user
    When I visit the activity page
    Then I should see my friens activity

