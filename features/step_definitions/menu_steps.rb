Given(/^there is a menu called "([^"]*)"$/) do |name|
  Menu.create(name: name)
end
