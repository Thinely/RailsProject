require 'rails_helper'

RSpec.describe "caretakers/show", type: :view do
  before(:each) do
    @caretaker = assign(:caretaker, Caretaker.create!(
      name: "Name",
      contact_no: 2,
      house: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
