Feature: As a business owner
  in order to promote my restaurant and menu
  I need to be able to enter information about the menu and its dishes.

Background:
  Given there is a user with username "bob" and password "notbob"

Scenario: Business owner should be able to add a menu
  Given I visit the index page
  And I click on the "Log In" link
  And I fill in "user[username]" with "bob"
  And I fill in "user[password]" with "notbob"
  And I click on the "login" button
  Then I should see "Successfully logged in bob"
  And I visit the page "/protected"
  Then I should see "Protected Page"
  And I fill in "menu" with "lunch"
  And I click on the "add_menu" button
  Then I should see "your menu has been added"
