Feature: Friends

  Background: 
    Given there are 2 users on the system

  Scenario: Request user friendship
    Given I am logged in
    When go to the new invitation page
    And I invite another user to be my friend
    Then the other user should have a friend request

  Scenario: Accept a friend request
    Given I am logged in
    And I have 1 pending friend request
    When I accept the request
    Then I should see a friend on my friend list

  Scenario: Reject a friend request
    Given I am logged in
    And I have 1 pending friend request
    When I reject the request
    Then I should not see any friend on my friend list

  Scenario: Remove a friend
    Given I am logged in
    And I have 1 friend
    When I delete my friend
    Then I should not see any friend on my friend list
