Given(/^I am not already registered$/) do
  user = User.find_by(email: 'test@gmail.com')
  expect(user).to be_nil
end                                                               
                                                                 
When(/^I visit the sign up page$/) do
  visit new_user_registration_path
end 

When(/^I submit the form with my details$/) do
  
  within(".new_user") do 
    fill_in 'Email', :with => 'test@gmail.com'
    fill_in 'Password', :with => 'password'
    fill_in 'Password confirmation', :with => 'password'
  end
  click_button 'Sign up'
end    

Then(/^I should see the search page$/) do   
  expect(page).to have_content('Where do you want to go today ?')
  expect(current_path).to eq(search_path)
end 

Given(/^I am already registered in the application$/) do 
  user = User.create(email: "test@gmail.com", password: "password")
  user = User.find_by(email: 'test@gmail.com')
  expect(user).to_not be_nil
end   

Then(/^I should see a message "(.*?)"$/) do |message|
  expect(page).to have_content(message)  
end                                                           