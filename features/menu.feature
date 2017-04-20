Feature: As a visitor
  In order to know what to buy, I need to know what is being offered
  I need to see a menu

Background:
  Given there is a menu called "Lunch"
  
Scenario: Visitor should view the menu page
  Given I visit the menu page
  Then I should see "Lunch"
