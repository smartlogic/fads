@http://www.pivotaltracker.com/story/show/9115555
Feature: User can add creatives to a Campaign
  In order to show my ads on Facebook
  As a customer
  I want to attach creatives to campaigns

  Background: 
    Given I am logged in
    And   I am on the home page

  Scenario: Adding an existing creative to a campaign
    Given I have a creative:
      | name | My Creative |
    And   I have a campaign:
      | name | Facebook Campaign |
    And   I follow "Campaigns"
    And   I follow "Facebook Campaign"
    When  I follow "Add Creative"
    And   I check "My Creative"
    And   I press "Add Creatives"
    Then  I should see "Creatives added to campaign"
