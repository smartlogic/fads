@http://www.pivotaltracker.com/story/show/9114651
Feature: User can create an ad
  In order to generate ad-traffic
  As a customer
  I want to upload an ad

  Background:
    Given the existing user:
      | email                 | test@slsdev.net |
    And   I am logged in

  Scenario: User creates an ad
    Given I am on the home page
    And   I follow "Create a new ad"
    And   I fill in "Title" with "Test title"
    And   I fill in "Body" with "Test body"
    And   I attach the fixture file "sample_image.png" to "Image"
    And   I press "Create Ad"
    Then  I should see "Ad successfully created"
