@http://www.pivotaltracker.com/story/show/9189579
Feature: User can create campaigns
  In order to manage my ads on facebook
  As a customer
  I want to create campaigns

  Background: 
    Given I am logged in
    And   my agency has the client "SmartLogic"
    And   I am on the homepage
    And   I follow "Campaigns"

  Scenario: Creating a valid campaign
    Given I follow "Create New"
    When  I fill in "Name" with "Sell More Widgets Campaign"
    And   I press "Create Campaign"
    Then  I should see "Campaign successfully created"
    
  Scenario: Creating an invalid campaign
    Given I follow "Create New"
    When  I press "Create Campaign" 
    Then  I should see "Name can't be blank"
