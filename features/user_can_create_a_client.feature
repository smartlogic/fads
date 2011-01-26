@http://www.pivotaltracker.com/story/show/9238427
Feature: User can create a client
  In order to serve multiple clients
  As an agency user
  I want to add a client

  Background: 
    Given I am logged in
    And   I am on my dashboard

  Scenario: Creating a new client
    When I select "New Client" from "Current client"
    And  I fill in "Name" with "XOM"
    And  I press "Create client"
    Then I should see "Client successfully created"
