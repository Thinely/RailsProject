require 'rails_helper'

RSpec.describe "complaint_details/show", type: :view do
  before(:each) do
    @complaint_detail = assign(:complaint_detail, ComplaintDetail.create!(
      tenant_id: 2,
      complaint_details: "Complaint Details"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Complaint Details/)
  end
end
