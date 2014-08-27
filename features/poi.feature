Feature: Points of Interest (Poi)
  
  As a user
  I want to be able to create, update, delete and list pois
  So I can view them in a map.
  
  Scenario: List of pois
    Given I am logged in
    When I visit the poi listing page
    Then I should see a list of pois that belongs to me
    
  Scenario: Create a poi
    Given I am logged in
    When I visit the poi listing page
    And I create a poi
    Then I should see a message "Poi was successfully created."
    
  Scenario: Update a Poi
    Given I am logged in
    When I visit the poi listing page
    And I create a poi
    And I update the name, longitude and latidude of that poi
    Then I should see a message "Poi was successfully updated."
    
  Scenario: Delete a Poi
    Given I am logged in
    When I visit the poi listing page
    And I create a poi
    And I delete that poi
    Then I should see a message "Poi was successfully destroyed."
    
    
  Scenario: Different users have different Pois
    Given I am logged in
    When I visit the poi listing page
    And I create a Poi
    Then I should see only one poi in the poi list
    When I log in as as different user
    And I create two pois
    Then I should see two pois in the categoty list