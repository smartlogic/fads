@http://www.pivotaltracker.com/story/show/9176297
Feature: User cannot create creative outside facebook text limits/requirements
  In order to create creatives that will be accepted by facebook
  As a customer
  I want to know whether my submitted title/body are within facebook bounds

  Background: 
    Given I am logged in
    And   I am on the home page
    And   I follow "Create a new creative"

  Scenario: Creating a creative with no title, body, image, or link
    When  I press "Create Creative"
    Then  I should see "Title can't be blank"
    And   I should see "Body can't be blank"
    And   I should see "Image can't be blank"
    And   I should see "Link can't be blank"

  Scenario: Creating a creative with title and body longer than limits
    When  I fill in "Title" with "This is a title that is much to long for Mark Z at facebook"
    And   I fill in "Body" with "This is a super long body that no one would ever actually enter because it is much much much too long, much much much too long, much much much too long, much much much too long, much much much too long, much much much too long, much much much too long"
    And   I press "Create Creative"
    Then  I should see "Title is too long (maximum is 25 characters)"
    And   I should see "Body is too long (maximum is 135 characters)"
