Feature: As a Visitor
I need to see information about the dishes.
-Menu should have dishes

Background:
  Given there is a menu called "Lunch"
  And there is a category called "main" 
  And there is a dish called "Pizza" on category "main" on menu "Lunch"
  And there is a dish called "Pasta Carbonara" on category "main" on menu "Lunch"

Scenario: Visitor should see available dishes and price
  Given I visit the Menu page
  Then I should be able to see "Pizza"
  And I should be able to see "Pasta Carbonara"
