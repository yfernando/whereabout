require 'rails_helper'

RSpec.describe Category, :type => :model do
  it {should belong_to :user}
  it {should have_many :pois}

  it {should have_db_column :name}
  it {should have_db_column :user_id}
end
