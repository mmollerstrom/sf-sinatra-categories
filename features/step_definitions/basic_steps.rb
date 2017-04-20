Given(/^I visit the menu page$/) do
  visit '/menu'
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Given(/^I visit the index page$/) do
  visit '/'
end

Given(/^I click on the "([^"]*)" link$/) do |link|
  click_link_or_button link
end

Then(/^I should be on the menu page$/) do
  expect(current_path).to eq '/menu'
end
