Feature: Category
  
  As a user
  I want to be able to create, update, delete and list categories
  So I can assign POIs to them.
  
  Scenario: List of categories
    Given I am logged in
    When I visit the category page
    Then I should see a list of categories
    
  Scenario: Create a category
    Given I am logged in
    When I visit the category page
    And I create a category
    Then I should see a message "Category was successfully created."
    
  Scenario: Update a category
    Given I am logged in
    When I visit the category page
    And I create a category
    And I update the name of that category
    Then I should see a message "Category was successfully updated."
    
  Scenario: Delete a category
    Given I am logged in
    When I visit the category page
    And I create a category
    And I delete that category
    Then I should see a message "Category was successfully destroyed."
    
    
  Scenario: Different users have different categories
    Given I am logged in
    When I visit the category page
    And I create a category
    Then I should see only one category in the category list
    When I log in as as different user
    And I create two categories
    Then I should see two categories in the categoty list
    
    