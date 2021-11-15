require 'rails_helper'

RSpec.describe "tenants/index", type: :view do
  before(:each) do
    assign(:tenants, [
      Tenant.create!(
        name: "Name",
        cid: 2,
        village: "Village",
        gewog: "Gewog",
        dzongkhag: "Dzongkhag",
        flat_no: "Flat No",
        total_family_members: 3,
        user_id: nil,
        house_id: nil
      ),
      Tenant.create!(
        name: "Name",
        cid: 2,
        village: "Village",
        gewog: "Gewog",
        dzongkhag: "Dzongkhag",
        flat_no: "Flat No",
        total_family_members: 3,
        user_id: nil,
        house_id: nil
      )
    ])
  end

  it "renders a list of tenants" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Village".to_s, count: 2
    assert_select "tr>td", text: "Gewog".to_s, count: 2
    assert_select "tr>td", text: "Dzongkhag".to_s, count: 2
    assert_select "tr>td", text: "Flat No".to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
