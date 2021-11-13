require 'rails_helper'

RSpec.describe "house_details/show", type: :view do
  before(:each) do
    @house_detail = assign(:house_detail, HouseDetail.create!(
      building_no: "Building No",
      no_of_rooms: 2,
      no_of_tenants: 3,
      location: "Location",
      parking_space: false,
      monthy_rent: 4.5,
      balcony: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Building No/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(/false/)
  end
end
