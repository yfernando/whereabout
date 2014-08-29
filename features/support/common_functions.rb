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

def create_poi(name, description, category)
  visit new_poi_path
  within("#new_poi") do
    fill_in 'Name', :with => name
    fill_in 'Description', :with => description
    select(category, :from => 'Category')
    fill_in 'Longitude', :with => '-77.037852'
    fill_in 'Latitude', :with => '38.898556'
  end
  click_button 'Create Poi'
end
