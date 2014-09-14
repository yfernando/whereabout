require 'rails_helper'

RSpec.describe Invitation, :type => :model do
  it {should have_db_column :from}
  it {should have_db_column :to}
end
