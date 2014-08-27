require 'rails_helper'

RSpec.describe "pois/new", :type => :view do
  before(:each) do
    assign(:poi, Poi.new())
  end

  it "renders new poi form" do
    render

    assert_select "form[action=?][method=?]", pois_path, "post" do
    end
  end
end
