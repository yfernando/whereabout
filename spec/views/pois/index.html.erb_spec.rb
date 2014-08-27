require 'rails_helper'

RSpec.describe "pois/index", :type => :view do
  before(:each) do
    assign(:pois, [
      Poi.create!(),
      Poi.create!()
    ])
  end

  it "renders a list of pois" do
    render
  end
end
