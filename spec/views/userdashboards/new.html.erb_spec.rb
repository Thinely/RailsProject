require 'rails_helper'

RSpec.describe "userdashboards/new", type: :view do
  before(:each) do
    assign(:userdashboard, Userdashboard.new())
  end

  it "renders new userdashboard form" do
    render

    assert_select "form[action=?][method=?]", userdashboards_path, "post" do
    end
  end
end
