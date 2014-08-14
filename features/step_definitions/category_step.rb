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
  fill_in 'Name', :with => 'Test_Food' 
  click_button('Create Category')
end             

When(/^I update the name of that category$/) do  
  click_link('Edit')
  fill_in 'Name', :with => 'Test_Food_Updated' 
  click_button('Update Category')    
end                                                                                                                                                                                                                                            
When(/^I delete that category$/) do
  click_link('Back')
  find('tr', :text => 'Test_Food').click_link('Destroy')
end 