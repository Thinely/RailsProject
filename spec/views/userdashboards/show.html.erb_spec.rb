require 'rails_helper'

RSpec.describe "userdashboards/show", type: :view do
  before(:each) do
    @userdashboard = assign(:userdashboard, Userdashboard.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
