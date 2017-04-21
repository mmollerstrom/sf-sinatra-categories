Feature: As a business owner
  In order to update the menu and prevent others form doing it
  I want to have a section that is protected

Background:
  Given there is a user with username "bob" and password "notbob"

Scenario: Business owner should be able to access protected area when logged in and be able to log out
  Given I visit the index page
  And I click on the "Log In" link
  And I fill in "user[username]" with "bob"
  And I fill in "user[password]" with "notbob"
  And I click on the "login" button
  Then I should see "Successfully logged in bob"
  And I visit the page "/protected"
  Then I should see "Protected Page"
  And I click on the "Log Out" link
  Then I should see "Successfully logged out"

Scenario: A user should not be able to access protected area when not logged in
  Given I visit the page "/protected"
  Then I should see "You must log in"

Scenario: A user cannot log in using wrong credentials
  Given I visit the index page
  And I click on the "Log In" link
  And I fill in "user[username]" with "bogus"
  And I fill in "user[password]" with "user"
  And I click on the "login" button
  Then I should see "The username you entered does not exist"
