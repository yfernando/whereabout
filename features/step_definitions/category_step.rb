Given(/^I am logged in$/) do
  step "I am already registered in the application"
  step "I visit the sign in page"
  step "I submit the Login form with correct credentials"
  step "I should see the search page"
end

When(/^I visit the category page$/) do
  visit categories_path
end

Then(/^I should see a list of categories created by me$/) do
  expect(page).to have_selector('table tr')
end

When(/^I create a category$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see the new category in the list$/) do
  p‰ending # express the regexp above with the code you wish you had
end

When(/^I update a category name$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see the updated category in the list$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I delete a category$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should not see that category in the list$/) do
  pending # express the regexp above with the code you wish you had
end

