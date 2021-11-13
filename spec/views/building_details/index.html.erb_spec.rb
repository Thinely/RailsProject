require 'rails_helper'

RSpec.describe "building_details/index", type: :view do
  before(:each) do
    assign(:building_details, [
      BuildingDetail.create!(),
      BuildingDetail.create!()
    ])
  end

  it "renders a list of building_details" do
    render
  end
end
