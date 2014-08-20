def signin_user(email, password)
  within("#new_user") do 
    fill_in 'Email', :with => email
    fill_in 'Password', :with => password
  end
  click_button 'Sign in'
end

def signup_user(email, password)
  User.create(email: email, password: password)
end