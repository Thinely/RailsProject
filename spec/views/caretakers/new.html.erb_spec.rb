require 'rails_helper'

RSpec.describe "caretakers/new", type: :view do
  before(:each) do
    assign(:caretaker, Caretaker.new(
      name: "MyString",
      contact_no: 1,
      house: nil
    ))
  end

  it "renders new caretaker form" do
    render

    assert_select "form[action=?][method=?]", caretakers_path, "post" do

      assert_select "input[name=?]", "caretaker[name]"

      assert_select "input[name=?]", "caretaker[contact_no]"

      assert_select "input[name=?]", "caretaker[house_id]"
    end
  end
end
