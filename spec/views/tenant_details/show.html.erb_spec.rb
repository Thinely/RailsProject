require 'rails_helper'

RSpec.describe "tenant_details/show", type: :view do
  before(:each) do
    @tenant_detail = assign(:tenant_detail, TenantDetail.create!(
      user_id: 2,
      name: "Name",
      cid: 3,
      village: "Village",
      gewog: "Gewog",
      dzongkhag: "Dzongkhag",
      total_family_memeber: 4,
      phone_no: 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Village/)
    expect(rendered).to match(/Gewog/)
    expect(rendered).to match(/Dzongkhag/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
  end
end
