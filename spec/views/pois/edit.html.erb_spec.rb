require 'rails_helper'

RSpec.describe "pois/edit", :type => :view do
  before(:each) do
    @poi = assign(:poi, Poi.create!())
  end

  it "renders the edit poi form" do
    render

    assert_select "form[action=?][method=?]", poi_path(@poi), "post" do
    end
  end
end
