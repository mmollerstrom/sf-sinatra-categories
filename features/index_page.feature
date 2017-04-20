Feature: As a visitor
So that I can access the site
I need to be able to see the index page

Background:
  Given there is a menu called "Lunch"

Scenario: Allows a visitor to access the index page
  Given I visit the index page
  Then I should see "Welcome to Slow Food Restaurant"

Scenario: Allows a visitor to navigate to the menu page from the index page
  Given I visit the index page
  And I click on the "Menu" link
  Then I should be on the menu page
