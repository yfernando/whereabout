Given(/^I have a category$/) do
  step "I visit the category page"
  step "I create a category"
end

Given(/^I have pois for that category$/) do
  5.times do |number|
    create_poi("Poi #{number}", "Desc #{number}", "Test_Cat1")
  end
end

When(/^I visit the poi listing page$/) do
  visit pois_path
end

Then(/^I should see a list of pois that belongs to me$/) do
  expect(page).to have_selector('table tr')
end

When(/^I create a poi$/) do
  create_poi("Test_Poi", "Test_Poi_Description", "Test_Cat1")
end

When(/^I update the name, longitude and latidude of that poi$/) do
  click_link('Edit')
  fill_in 'Name', :with => 'test poi updated'
  fill_in 'Description', :with => 'test desc update'
  fill_in 'Longitude', :with => '000000'
  fill_in 'Latitude', :with => '000000'
  click_button('Update Poi')
end

When(/^I delete that poi$/) do
  click_link('Back')
  within("table tbody tr:first-child") do
    click_link('Destroy')
  end
end

Then(/^I should see "(.*?)" poi|pois in the poi list$/) do |number|
  number_of_rows = all("table tbody tr").size
  expect(number_of_rows).to eq number.to_i
end
