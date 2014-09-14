require 'rails_helper'

RSpec.describe User, :type => :model do
  it { should have_db_column :email }
  it { should have_many :categories }
  it { should have_many :pois }
  it { should have_many :friends }
end
