require 'rails_helper'

RSpec.describe "complaint_details/edit", type: :view do
  before(:each) do
    @complaint_detail = assign(:complaint_detail, ComplaintDetail.create!(
      tenant_id: 1,
      complaint_details: "MyString"
    ))
  end

  it "renders the edit complaint_detail form" do
    render

    assert_select "form[action=?][method=?]", complaint_detail_path(@complaint_detail), "post" do

      assert_select "input[name=?]", "complaint_detail[tenant_id]"

      assert_select "input[name=?]", "complaint_detail[complaint_details]"
    end
  end
end
