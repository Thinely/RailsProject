require 'rails_helper'

RSpec.describe "house_details/index", type: :view do
  before(:each) do
    assign(:house_details, [
      HouseDetail.create!(
        building_no: "Building No",
        no_of_rooms: 2,
        no_of_tenants: 3,
        location: "Location",
        parking_space: false,
        monthy_rent: 4.5,
        balcony: false
      ),
      HouseDetail.create!(
        building_no: "Building No",
        no_of_rooms: 2,
        no_of_tenants: 3,
        location: "Location",
        parking_space: false,
        monthy_rent: 4.5,
        balcony: false
      )
    ])
  end

  it "renders a list of house_details" do
    render
    assert_select "tr>td", text: "Building No".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "Location".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: 4.5.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
