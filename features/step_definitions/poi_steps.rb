When(/^I visit the poi listing page$/) do
  visit pois_path
end

Then(/^I should see a list of pois that belongs to me$/) do
  step "I create a poi"
  pois = Poi.find_by(email: 'test@gmail.com').pois
  expect(pois).to_not be nil
  expect(page).to have_selector('table tr')
end

When(/^I create a poi$/) do
  visit new_poi_path
end

When(/^I update the name, longitude and latidude of that poi$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I delete that poi$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I create a Poi$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see only one poi in the poi list$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I create two pois$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see two pois in the categoty list$/) do
  pending # express the regexp above with the code you wish you had
end

