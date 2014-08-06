Given(/^I visit the homepage$/) do
  visit '/'
end

Then(/^I see the welcome message$/) do
  expect(page).to have_content "Welcome"
end    