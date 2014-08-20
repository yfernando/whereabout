Given(/^I am logged in$/) do
  step "I am already registered in the application"
  step "I visit the sign in page"
  step "I submit the Login form with correct credentials"
  step "I should see the search page"
end

When(/^I visit the category page$/) do
  visit categories_path
end

Then(/^I should see a list of categories$/) do
  expect(page).to have_selector('table tr')
end

When(/^I create a category$/) do
  #visit new_category_path
  click_link('New Category')
  fill_in 'Name', :with => 'Test_Cat1' 
  click_button('Create Category')
end             

When(/^I update the name of that category$/) do  
  click_link('Edit')
  fill_in 'Name', :with => 'Test_Cat1_Updated' 
  click_button('Update Category')    
end                                                                                                                                                                                                                                            
When(/^I delete that category$/) do
  click_link('Back')
  find('tr', :text => 'Test_Cat1').click_link('Destroy')
end 

Then(/^I should see only one category in the category list$/) do   
  categories = User.find_by(email: 'test@gmail.com').categories
  expect(categories.size).to be == 1
end                                                                

When(/^I log in as as different user$/) do   
  click_link 'Logout'
  signup_user "test2@gmail.com", "password"
  signin_user "test2@gmail.com", "password" 
  expect(page).to have_content("test2@gmail.com")
end                                                                 

When(/^I create two categories$/) do                        
  visit new_category_path
  fill_in 'Name', :with => 'Test_Cat1' 
  click_button('Create Category')
  click_link 'Back'
  click_link('New Category')
  fill_in 'Name', :with => 'Test_Cat2' 
  click_button('Create Category')
end

Then(/^I should see two categories in the categoty list$/) do 
  categories = User.find_by(email: 'test2@gmail.com').categories
  expect(categories.size).to eq 2
end        