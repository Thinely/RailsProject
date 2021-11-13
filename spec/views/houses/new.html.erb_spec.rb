require 'rails_helper'

RSpec.describe "houses/new", type: :view do
  before(:each) do
    assign(:house, House.new(
      building_no: "MyString",
      no_of_rooms: 1,
      no_of_tenants: 1,
      location: "MyString",
      monthly_rent: 1.5,
      space_available: 1,
      balcony_availabe: false,
      parking_space: false
    ))
  end

  it "renders new house form" do
    render

    assert_select "form[action=?][method=?]", houses_path, "post" do

      assert_select "input[name=?]", "house[building_no]"

      assert_select "input[name=?]", "house[no_of_rooms]"

      assert_select "input[name=?]", "house[no_of_tenants]"

      assert_select "input[name=?]", "house[location]"

      assert_select "input[name=?]", "house[monthly_rent]"

      assert_select "input[name=?]", "house[space_available]"

      assert_select "input[name=?]", "house[balcony_availabe]"

      assert_select "input[name=?]", "house[parking_space]"
    end
  end
end
