Feature: Search
  
  As a user
  I want to be able to search for pois
  So I can see their information
  
  Scenario: Visiting search page as a non logged in user
    When I visit the search page
    Then I should be redirected to the login page