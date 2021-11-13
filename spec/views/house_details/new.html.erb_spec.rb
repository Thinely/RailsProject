require 'rails_helper'

RSpec.describe "house_details/new", type: :view do
  before(:each) do
    assign(:house_detail, HouseDetail.new(
      building_no: "MyString",
      no_of_rooms: 1,
      no_of_tenants: 1,
      location: "MyString",
      parking_space: false,
      monthy_rent: 1.5,
      balcony: false
    ))
  end

  it "renders new house_detail form" do
    render

    assert_select "form[action=?][method=?]", house_details_path, "post" do

      assert_select "input[name=?]", "house_detail[building_no]"

      assert_select "input[name=?]", "house_detail[no_of_rooms]"

      assert_select "input[name=?]", "house_detail[no_of_tenants]"

      assert_select "input[name=?]", "house_detail[location]"

      assert_select "input[name=?]", "house_detail[parking_space]"

      assert_select "input[name=?]", "house_detail[monthy_rent]"

      assert_select "input[name=?]", "house_detail[balcony]"
    end
  end
end
