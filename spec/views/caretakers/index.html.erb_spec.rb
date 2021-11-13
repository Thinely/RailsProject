require 'rails_helper'

RSpec.describe "caretakers/index", type: :view do
  before(:each) do
    assign(:caretakers, [
      Caretaker.create!(
        name: "Name",
        contact_no: 2,
        house: nil
      ),
      Caretaker.create!(
        name: "Name",
        contact_no: 2,
        house: nil
      )
    ])
  end

  it "renders a list of caretakers" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
