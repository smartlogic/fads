@http://www.pivotaltracker.com/story/show/9238427
Feature: User can create a client
  In order to serve multiple clients
  As an agency user
  I want to add a client

  Background: 
    Given I am logged in
    And   I go to my dashboard
    Then  I should see "Current client:"

  @javascript
  Scenario: Creating a new client
    When I select "New Client..." from "client_id"
    And  I fill in "Name" with "XOM"
    And  I press "Create Client"
    Then I should see "Client successfully created"

  Scenario: Creating a new client
    Given I am on the new client page
    And  I fill in "Name" with "XOM"
    And  I press "Create Client"
    Then I should see "Client successfully created"
