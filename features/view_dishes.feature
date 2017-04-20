Feature: As a Visitor
I need to see information about the dishes.
-Menu should have dishes

Background:
  Given there is a menu called "Menu"
  And there is a dish called "Pizza" on "Menu"
  And there is a dish called "Pasta Carbonara" on "Menu"

Scenario: Visitor should see available dishes and price
  Given I visit the Menu page
  Then I should be able to see "Pizza"
  And I should be able to see "Carbonara"
  Then show me the page
