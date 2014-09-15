When(/^I visit the search page$/) do                                 
  visit search_path
end

Then(/^I should be redirected to the login page$/) do                                                              
  expect(current_path).to eq new_user_session_path
end

When(/^I search for Pois$/) do
  select('Bridge', :from => 'category_id')
end

Then(/^I should be displayed a map with the Pois$/) do
  expect(page).to have_css('#map-canvas')
end