require 'rails_helper'

RSpec.describe Activity, :type => :model do
  it {should belong_to :who}

  it {should have_db_column :who_id}
  it {should have_db_column :what}
end
