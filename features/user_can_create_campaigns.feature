@http://www.pivotaltracker.com/story/show/9189579
Feature: User can create campaigns
  In order to manage my ads on facebook
  As a customer
  I want to create campaigns

  Background: 
    Given I am logged in
    And   I am on my dashboard

  Scenario: Creating a valid campaign
    Given I follow "Create Campaign"
    When  I fill in "Name" with "Sell More Widgets Campaign"
    And   I press "Create Campaign"
    Then  I should see "Campaign successfully created"
    
  Scenario: Creating an invalid campaign
    Given I follow "Create Campaign"
    When  I press "Create Campaign" 
    Then  I should see "Name can't be blank"

  Scenario: Viewing my campaigns
    Given I have a campaign: 
      | name | My Campaign |
    And   I follow "Campaigns"
    Then  I should see "My Campaign"
