require 'rails_helper'

RSpec.describe "userdashboards/edit", type: :view do
  before(:each) do
    @userdashboard = assign(:userdashboard, Userdashboard.create!())
  end

  it "renders the edit userdashboard form" do
    render

    assert_select "form[action=?][method=?]", userdashboard_path(@userdashboard), "post" do
    end
  end
end
