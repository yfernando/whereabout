When(/^I visit the sign in page$/) do
  visit new_user_session_path
end 

When(/^I submit the Login form with correct credentials$/) do      
  within(".new_user") do 
    fill_in 'Email', :with => 'test@gmail.com'
    fill_in 'Password', :with => 'password'
  end
  click_button 'Sign in'
end                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                               
When(/^I submit the Login form with wrong credentials$/) do         
  within(".new_user") do 
    fill_in 'Email', :with => 'wrong_email'
    fill_in 'Password', :with => 'wrong_password'
  end
  click_button 'Sign in'
end  