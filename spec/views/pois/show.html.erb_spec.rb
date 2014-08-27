require 'rails_helper'

RSpec.describe "pois/show", :type => :view do
  before(:each) do
    @poi = assign(:poi, Poi.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
