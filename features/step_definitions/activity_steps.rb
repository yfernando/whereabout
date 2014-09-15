Given(/^I am logged in as first user$/) do
  visit new_user_session_path
  signin_user User.first.email, 'password'
end

Given(/^they are both friends$/) do
  user1 = User.first
  user2 = User.last
  user1.friends << user2
  user2.friends << user1
  user1.save!
  user2.save!
end

Given(/^the last user creates a new category$/) do
  Activity.create! who: User.last, what: 'created a new category \'Clubs\''
end

Given(/^the last user creates a new poi$/) do
  Activity.create! who: User.last, what: 'created a new poi \'Bar Salsa\''
end

When(/^I visit the activity page$/) do
  visit root_path
end

Then(/^I should see my friens activity$/) do
  expect(page).to have_content('test1@gmail.com has created a new category \'Clubs\'')
  expect(page).to have_content('test1@gmail.com has created a new poi \'Bar Salsa\'')
end
