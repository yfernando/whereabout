Given(/^there are (\d+) users on the system$/) do |number_of_users|
  number_of_users.to_i.times do |num|
    signup_user "test#{num}@gmail.com", "password"
  end
end

When(/^go to the new invitation page$/) do
  visit new_invitation_path
end

When(/^I invite another user to be my friend$/) do
  fill_in 'Email', :with => User.first.email
  click_button('Send Friend Request')
end

Then(/^the other user should have a friend request$/) do
  click_link('Logout')
  signin_user(User.first.email, "password")
  expect(page).to have_content('You have 1 pending friend request')
end

Given(/^I have (\d+) pending friend request$/) do |pending_requests|
  Invitation.create! from: 'test1@gmail.com', to: 'test@gmail.com'
end

When(/^I accept the request$/) do
  visit invitations_path
  click_link 'Accept request'
end

Then(/^I should see a friend on my friend list$/) do
  visit friends_path
  expect(page).to have_content 'test1@gmail.com'
end

When(/^I reject the request$/) do
  visit invitations_path
  click_link 'Reject request'
end

Then(/^I should not see any friend on my friend list$/) do
  visit friends_path
  expect(page).to_not have_content 'test1@gmail.com'
  expect(page).to have_content 'You haven\'t added any friend yet'
end

Given(/^I have (\d+) friend$/) do |arg1|
  user = User.find_by(email: 'test@gmail.com')
  friend = User.find_by(email: 'test1@gmail.com')
  user.friends << friend
  user.save!
end

When(/^I delete my friend$/) do
  visit friends_path
  click_link 'Remove friend'
end
