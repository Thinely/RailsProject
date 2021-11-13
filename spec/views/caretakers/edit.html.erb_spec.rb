require 'rails_helper'

RSpec.describe "caretakers/edit", type: :view do
  before(:each) do
    @caretaker = assign(:caretaker, Caretaker.create!(
      name: "MyString",
      contact_no: 1,
      house: nil
    ))
  end

  it "renders the edit caretaker form" do
    render

    assert_select "form[action=?][method=?]", caretaker_path(@caretaker), "post" do

      assert_select "input[name=?]", "caretaker[name]"

      assert_select "input[name=?]", "caretaker[contact_no]"

      assert_select "input[name=?]", "caretaker[house_id]"
    end
  end
end
