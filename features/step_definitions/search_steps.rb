When(/^I visit the search page$/) do                                 
  visit search_path
end

Then(/^I should be redirected to the login page$/) do                                                              
  expect(current_path).to eq new_user_session_path
end