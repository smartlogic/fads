Feature: User can add creatives to a campaign
  In order to run creatives for my campaign
  As a customer
  I want to add creatives to a campaign

  Background:
    Given I am logged in
    And   my agency has the client "XOM"
    And   my client has the campaign "Super Campaign"
    And   my client has the creative "Uber Creative"
    And   I am on the homepage
    And   I follow "Campaigns"

  @javascript
  Scenario: Adding an existing creative to a campaign
    When I follow "Super Campaign"
    And  I follow "Add existing creative"
    And  I press "Add" within ".popup"
    Then I should see "Creative added"
    And  I should see "Uber Creative" within "table#creatives_table"

  Scenario: Adding a new creative to a campaign inline
