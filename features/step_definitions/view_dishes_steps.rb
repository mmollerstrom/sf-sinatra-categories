
Given(/^there is a dish called "([^"]*)" on "([^"]*)"$/) do |dish_name, menu_name|
  menu = Menu.first(name: menu_name)
  menu.dishes.create(name: dish_name, menu_id: menu.id)
end

Given(/^I visit the Menu page$/) do
  visit '/menu'
end

Then(/^I should be able to see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end
