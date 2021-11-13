require 'rails_helper'

RSpec.describe "tenant_details/index", type: :view do
  before(:each) do
    assign(:tenant_details, [
      TenantDetail.create!(
        user_id: 2,
        name: "Name",
        cid: 3,
        village: "Village",
        gewog: "Gewog",
        dzongkhag: "Dzongkhag",
        total_family_memeber: 4,
        phone_no: 5
      ),
      TenantDetail.create!(
        user_id: 2,
        name: "Name",
        cid: 3,
        village: "Village",
        gewog: "Gewog",
        dzongkhag: "Dzongkhag",
        total_family_memeber: 4,
        phone_no: 5
      )
    ])
  end

  it "renders a list of tenant_details" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "Village".to_s, count: 2
    assert_select "tr>td", text: "Gewog".to_s, count: 2
    assert_select "tr>td", text: "Dzongkhag".to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
  end
end
