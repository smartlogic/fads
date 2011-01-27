@http://www.pivotaltracker.com/story/show/9114651
Feature: User can create a creative
  In order to generate ad-traffic
  As a customer
  I want to upload an creative

  Background:
    Given I am logged in
    And   my agency has the client "Morgan Stanley"

  Scenario: User creates a creative
    Given I am on the home page
    And   I follow "Creatives"
    And   I follow "Create New"
    Then  the "Create New" subnav should be selected

    When  I fill in "Name" with "My Creative"
    And   I fill in "Title" with "Test title"
    And   I fill in "Body" with "Test body"
    And   I fill in "Link" with "http://www.smartlogicsolutions.com"
    And   I attach the fixture file "sample_image.png" to "Image"
    And   I press "Create Creative"
    Then  I should see "Creative successfully created"
