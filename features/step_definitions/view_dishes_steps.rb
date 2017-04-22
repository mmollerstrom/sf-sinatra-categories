# Given(/^there is a dish called "([^"]*)" on "([^"]*)"$/) do |dish_name, menu_name|
#   menu = Menu.first(name: menu_name)
#   menu.dishes.create(name: dish_name, menu_id: menu.id)
# end

Given(/^there is a dish called "([^"]*)" on category "([^"]*)" on menu "([^"]*)"$/) do |dish_name, cat_name, menu_name|
  #binding.pry
  menu = Menu.first(name: menu_name)
  category = Category.first(category_name: cat_name)
  category.dishes.create(name: dish_name, category_id: category.id, menu_id: menu.id)
  #binding.pry
end

Given(/^I visit the Menu page$/) do
  visit '/menu'
end

Given(/^there is a category called "([^"]*)"$/) do |content|
  #binding.pry
  Category.create(category_name: content)
end

Then(/^I should be able to see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

#Then(/^I should be able to see dish "([^"]*)" part of category "([^"]*)"$/) do |dish_name, cat_name|
#
#end
