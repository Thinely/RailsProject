require 'rails_helper'

RSpec.describe "building_details/show", type: :view do
  before(:each) do
    @building_detail = assign(:building_detail, BuildingDetail.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
