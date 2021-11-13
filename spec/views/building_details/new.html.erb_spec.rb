require 'rails_helper'

RSpec.describe "building_details/new", type: :view do
  before(:each) do
    assign(:building_detail, BuildingDetail.new())
  end

  it "renders new building_detail form" do
    render

    assert_select "form[action=?][method=?]", building_details_path, "post" do
    end
  end
end
