@http://www.pivotaltracker.com/story/show/9114185
Feature: User can log in
  In order to access my account
  As a customer
  I can log into my account with an email address and password

  Scenario: User logs in
    Given the existing user:
      | email                 | test@slsdev.net |
      | password              | password        |
      | password_confirmation | password        |
    Given I am on the homepage
    And   I follow "Login"
    And   I fill in "Email" with "test@slsdev.net"
    And   I fill in "Password" with "password"
    And   I press "Sign in"
    Then  I should see "Signed in successfully"

