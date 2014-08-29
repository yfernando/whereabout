require 'rails_helper'

RSpec.describe Poi, :type => :model do
  it {should belong_to :category}
  
  it {should have_db_column :name}
  it {should have_db_column :description}
  it {should have_db_column :latitude}
  it {should have_db_column :longitude}
  it {should have_db_column :category_id}
end
