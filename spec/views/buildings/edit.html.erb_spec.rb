require 'rails_helper'

RSpec.describe "buildings/edit", type: :view do
  before(:each) do
    @building = assign(:building, Building.create!(
      building_no: "MyString",
      no_of_rooms: 1,
      no_of_tenants: 1,
      location: "MyString",
      monthly_rent: 1.5,
      space_available: 1,
      balcony_availabe: false,
      parking_space: "MyString",
      boolean: "MyString"
    ))
  end

  it "renders the edit building form" do
    render

    assert_select "form[action=?][method=?]", building_path(@building), "post" do

      assert_select "input[name=?]", "building[building_no]"

      assert_select "input[name=?]", "building[no_of_rooms]"

      assert_select "input[name=?]", "building[no_of_tenants]"

      assert_select "input[name=?]", "building[location]"

      assert_select "input[name=?]", "building[monthly_rent]"

      assert_select "input[name=?]", "building[space_available]"

      assert_select "input[name=?]", "building[balcony_availabe]"

      assert_select "input[name=?]", "building[parking_space]"

      assert_select "input[name=?]", "building[boolean]"
    end
  end
end
