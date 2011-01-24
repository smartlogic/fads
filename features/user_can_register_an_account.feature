@http://www.pivotaltracker.com/story/show/9114127
Feature: User can register an account
  In order to gain access to the system
  As a potential customer
  I want to register an account

  Scenario: User registers an account
    Given I am on the home page
    And   I follow "Register"
    When  I fill in "Email" with "test@slsdev.net"
    And   I fill in "Password" with "password"
    And   I fill in "Password confirmation" with "password"
    And   I press "Sign up"
    Then  I should see "You have signed up successfully."

