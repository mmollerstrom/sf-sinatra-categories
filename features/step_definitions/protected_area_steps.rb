Given(/^there is a user with username "([^"]*)" and password "([^"]*)"$/) do |username, password|
  User.create(username: username, password: password)
end
