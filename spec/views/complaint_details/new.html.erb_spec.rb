require 'rails_helper'

RSpec.describe "complaint_details/new", type: :view do
  before(:each) do
    assign(:complaint_detail, ComplaintDetail.new(
      tenant_id: 1,
      complaint_details: "MyString"
    ))
  end

  it "renders new complaint_detail form" do
    render

    assert_select "form[action=?][method=?]", complaint_details_path, "post" do

      assert_select "input[name=?]", "complaint_detail[tenant_id]"

      assert_select "input[name=?]", "complaint_detail[complaint_details]"
    end
  end
end
