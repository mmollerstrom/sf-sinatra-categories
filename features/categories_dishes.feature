Feature: As a visitor
To make ordering easier
I need to see categorize for the dishes: starters, main, desserts

Background:
  Given there is a menu called "Lunch"
  And there is a category called "main"
  And there is a category called "desserts"
  And there is a category called "starters"
  And there is a dish called "Pizza" on category "main" on menu "Lunch"
  And there is a dish called "Soup" on category "starters" on menu "Lunch"
  And there is a dish called "Chocolate Volcano" on category "desserts" on menu "Lunch"

Scenario: Visitor should see dishes and their categories
  Given I visit the Menu page
  Then I should be able to see "starters"
  And I should be able to see "main"
  And I should be able to see "desserts"
