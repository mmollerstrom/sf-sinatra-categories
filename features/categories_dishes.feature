Feature: As a visitor
To make ordering easier
I need to see categorize for the dishes: starters, main, desserts

Background:
  Given there is a category called "main"
    And there is a category called "desserts"
    And there is a category called "starters"
    And there is a dish called "Pizza" on category "main"
    And there is a dish called "Soup" on category "starters"
    And there is a dish called "Choclate Volcano" on category "desserts"

Scenario: Visitor should see dishes and their categories
  Given I visit the Menu page
  Then show me the page
  Then I should be able to see "starters"
  And I should be able to see "main"
  And I should be able to see "desserts"
