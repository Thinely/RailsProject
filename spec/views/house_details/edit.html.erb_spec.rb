require 'rails_helper'

RSpec.describe "house_details/edit", type: :view do
  before(:each) do
    @house_detail = assign(:house_detail, HouseDetail.create!(
      building_no: "MyString",
      no_of_rooms: 1,
      no_of_tenants: 1,
      location: "MyString",
      parking_space: false,
      monthy_rent: 1.5,
      balcony: false
    ))
  end

  it "renders the edit house_detail form" do
    render

    assert_select "form[action=?][method=?]", house_detail_path(@house_detail), "post" do

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
