require 'rails_helper'

RSpec.describe "userdashboards/index", type: :view do
  before(:each) do
    assign(:userdashboards, [
      Userdashboard.create!(),
      Userdashboard.create!()
    ])
  end

  it "renders a list of userdashboards" do
    render
  end
end
