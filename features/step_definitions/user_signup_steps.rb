Given(/^I am not already registered$/) do
  user = User.find_by(email: 'test@gmail.com')
  expect(user).to be_nil
end                                                               
                                                                 
When(/^I visit the sign up page$/) do
end                                                                                                                                                                                
When(/^I submit the form with my details$/) do
end                                                              
                                                                                                                                                                                   
Then(/^I should see the search page$/) do                 
end                                                                                                                                                                                
                                                                                                                                                                                   
Given(/^I am already registered in the applicaiton$/) do                                                                                                                           
end                                                                                                                                                                                
                                                                                                                                                                                   
When(/^I visit the signup page$/) do                                                                                                                                               
end                                                                                                                                                                                
                                                                                                                                                                                   
Then(/^I should see a message "(.*?)"$/) do |arg1|                                                                                                                                 
end                                                           