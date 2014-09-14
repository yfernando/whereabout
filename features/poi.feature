Feature: Points of Interest (Poi)

  As a user
  I want to be able to create, update, delete and list pois
  So I can view them in a map.

  Background:
    Given I am logged in
    And I have a category
    And I have pois for that category

  Scenario: List of pois
    When I visit the poi listing page
    Then I should see a list of pois in a map

  Scenario: Create a poi
    Then I should see a message "Poi was successfully created."

  Scenario: Update a Poi
    And I update the name, longitude and latidude of that poi
    Then I should see a message "Poi was successfully updated."

  Scenario: Delete a Poi
    And I create a poi
    And I delete that poi
    Then I should see a message "Poi was successfully destroyed."


  Scenario: Different users have different Pois
    And I visit the poi listing page
    Then I should see "5" pois in the poi list
    When I log in as as different user
    And I have a category
    And I create a poi
    And I visit the poi listing page
    Then I should see "1" poi in the poi list
