@http://www.pivotaltracker.com/story/show/9114323
Feature: User can create a TargetGroup
  In order to purchase targeted ads from Facebook
  As a customer
  I want to create a TargetGroup

  Background: 
    Given I am logged in

  Scenario: User creates a TargetGroup
    Given I am on the home page
    And   I follow "Create a new target group"
    When  I fill in "Name" with "My Awesome TargetGroup"
    And   press "Create Target Group"
    Then  I should see "Target group successfully created"

  Scenario: Creating a TargetGroup without a name
    Given I am on the home page
    And   I follow "Create a new target group"
    When  I press "Create Target Group"
    Then  I should see "Name can't be blank"

  Scenario: Attempting to create a target group when not logged in
    Given I am not logged in
    And   I am on the home page
    When  I follow "Create a new target group"
    Then  I should see "You need to sign in or sign up before continuing."
