Given(/^I am not already registered$/) do
  user = User.find_by(email: 'test@gmail.com')
  expect(user).to be_nil
end                                                               
                                                                 
When(/^I visit the sign up page$/) do
  pending # express the regexp above with the code you wish you had     
end                                                                                                                                                                                
When(/^I submit the form with my details$/) do
  pending # express the regexp above with the code you wish you had
end                                                              
                                                                                                                                                                                   
Then(/^I should see the search page$/) do                 
  pending # express the regexp above with the code you wish you had 
end                                                                                                                                                                                
                                                                                                                                                                                   
Given(/^I am already registered in the applicaiton$/) do                                                                                                                           
  pending # express the regexp above with the code you wish you had                                                                                                                
end                                                                                                                                                                                
                                                                                                                                                                                   
When(/^I visit the signup page$/) do                                                                                                                                               
  pending # express the regexp above with the code you wish you had                                                                                                                
end                                                                                                                                                                                
                                                                                                                                                                                   
Then(/^I should see a message "(.*?)"$/) do |arg1|                                                                                                                                 
  pending # express the regexp above with the code you wish you had                                                                                                                
end                                                           