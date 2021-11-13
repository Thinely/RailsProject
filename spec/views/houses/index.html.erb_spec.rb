require 'rails_helper'

RSpec.describe "houses/index", type: :view do
  before(:each) do
    assign(:houses, [
      House.create!(
        building_no: "Building No",
        no_of_rooms: 2,
        no_of_tenants: 3,
        location: "Location",
        monthly_rent: 4.5,
        space_available: 5,
        balcony_availabe: false,
        parking_space: false
      ),
      House.create!(
        building_no: "Building No",
        no_of_rooms: 2,
        no_of_tenants: 3,
        location: "Location",
        monthly_rent: 4.5,
        space_available: 5,
        balcony_availabe: false,
        parking_space: false
      )
    ])
  end

  it "renders a list of houses" do
    render
    assert_select "tr>td", text: "Building No".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "Location".to_s, count: 2
    assert_select "tr>td", text: 4.5.to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
