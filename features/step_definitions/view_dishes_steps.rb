Given(/^there is a dish called "([^"]*)" on "([^"]*)"$/) do |dish_name, menu_name|
  Dish.create(name: dish_name)
  Menu.create(name: menu_name)
end

Given(/^I visit the Menu page$/) do
  visit '/menu'
end

Then(/^I should be able to see "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^show me the page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
