require 'rails_helper'

RSpec.describe "complaint_details/index", type: :view do
  before(:each) do
    assign(:complaint_details, [
      ComplaintDetail.create!(
        tenant_id: 2,
        complaint_details: "Complaint Details"
      ),
      ComplaintDetail.create!(
        tenant_id: 2,
        complaint_details: "Complaint Details"
      )
    ])
  end

  it "renders a list of complaint_details" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Complaint Details".to_s, count: 2
  end
end
