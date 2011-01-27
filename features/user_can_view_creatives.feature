Feature: User can view creatives
  In order to manage my library of creatives
  As an agency user
  I want to view a list of all of my creatives

  Background:
    Given I am logged in
    And   my agency has the client "Stark Enterprises"
    Given I am on the home page

  Scenario: Client has 0 creatives
    Given I follow "Creatives"
    Then  I should see "My Creatives"
    And   I should see "You have not uploaded any creatives"
    And   the "View All" subnav should be selected

  Scenario: Client has 2 creatives
    Given a creative:
      | name      | My super unique name           |
    And   a creative:
      | name      | My other unique name           |
    And   I follow "Creatives"
    Then  I should see "My Creatives"
    And   the "View All" subnav should be selected
    And   I should see "My super unique name" within "table#creatives_table"
    And   I should see "My other unique name" within "table#creatives_table"
