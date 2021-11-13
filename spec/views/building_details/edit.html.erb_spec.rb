require 'rails_helper'

RSpec.describe "building_details/edit", type: :view do
  before(:each) do
    @building_detail = assign(:building_detail, BuildingDetail.create!())
  end

  it "renders the edit building_detail form" do
    render

    assert_select "form[action=?][method=?]", building_detail_path(@building_detail), "post" do
    end
  end
end
