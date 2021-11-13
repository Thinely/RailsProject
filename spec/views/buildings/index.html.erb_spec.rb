require 'rails_helper'

RSpec.describe "buildings/index", type: :view do
  before(:each) do
    assign(:buildings, [
      Building.create!(
        building_no: "Building No",
        no_of_rooms: 2,
        no_of_tenants: 3,
        location: "Location",
        monthly_rent: 4.5,
        space_available: 5,
        balcony_availabe: false,
        parking_space: "Parking Space",
        boolean: "Boolean"
      ),
      Building.create!(
        building_no: "Building No",
        no_of_rooms: 2,
        no_of_tenants: 3,
        location: "Location",
        monthly_rent: 4.5,
        space_available: 5,
        balcony_availabe: false,
        parking_space: "Parking Space",
        boolean: "Boolean"
      )
    ])
  end

  it "renders a list of buildings" do
    render
    assert_select "tr>td", text: "Building No".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "Location".to_s, count: 2
    assert_select "tr>td", text: 4.5.to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: "Parking Space".to_s, count: 2
    assert_select "tr>td", text: "Boolean".to_s, count: 2
  end
end
