require 'rails_helper'

RSpec.describe "tenants/show", type: :view do
  before(:each) do
    @tenant = assign(:tenant, Tenant.create!(
      name: "Name",
      cid: 2,
      village: "Village",
      gewog: "Gewog",
      dzongkhag: "Dzongkhag",
      flat_no: "Flat No",
      total_family_members: 3,
      user_id: nil,
      house_id: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Village/)
    expect(rendered).to match(/Gewog/)
    expect(rendered).to match(/Dzongkhag/)
    expect(rendered).to match(/Flat No/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
