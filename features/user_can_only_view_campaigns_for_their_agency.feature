Feature: User can only view campaigns for their agency
  In order to manage my campaigns
  As a customer
  I want to view the campaigns for my agency

  Scenario:
    Given I am logged in
    And   my agency has the client "Jeebus"
    And   my client has the campaign named "Second Coming"
    And   the agency named "Evil Agency"
    And   the agency named "Evil Agency" has a campaign named "My Terrible Campaign"
    When  I follow "Campaigns"
    Then  I should see "My Awesome Campaign"
    And   I should not see "My Terrible Campaign"
