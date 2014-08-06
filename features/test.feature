Feature: Cucumber works with capybara

  Scenario: Landing page
    Given I visit the homepage
    Then I see the welcome message