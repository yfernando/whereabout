Feature: Category
  
  As a user
  I want to be able to create, update, delete and list categories
  So I can assign POIs to them.
  
  Scenario: List of categories
    Given I am logged in
    When I visit the category page
    Then I should see a list of categories created by me
    
  Scenario: Create a category
    Given I am logged in
    When I visit the category page
    And I create a category
    Then I should see the new category in the list
    
  Scenario: Update a category
    Given I am logged in
    When I visit the category page
    And I create a category
    And I update a category name
    Then I should see the updated category in the list
    
  Scenario: Delete a category
    Given I am logged in
    When I visit the category page
    And I create a category
    And I delete a category
    Then I should not see that category in the list