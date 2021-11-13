require 'rails_helper'

RSpec.describe "buildings/show", type: :view do
  before(:each) do
    @building = assign(:building, Building.create!(
      building_no: "Building No",
      no_of_rooms: 2,
      no_of_tenants: 3,
      location: "Location",
      monthly_rent: 4.5,
      space_available: 5,
      balcony_availabe: false,
      parking_space: "Parking Space",
      boolean: "Boolean"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Building No/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Parking Space/)
    expect(rendered).to match(/Boolean/)
  end
end
