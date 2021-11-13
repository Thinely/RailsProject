require 'rails_helper'

RSpec.describe "tenant_details/new", type: :view do
  before(:each) do
    assign(:tenant_detail, TenantDetail.new(
      user_id: 1,
      name: "MyString",
      cid: 1,
      village: "MyString",
      gewog: "MyString",
      dzongkhag: "MyString",
      total_family_memeber: 1,
      phone_no: 1
    ))
  end

  it "renders new tenant_detail form" do
    render

    assert_select "form[action=?][method=?]", tenant_details_path, "post" do

      assert_select "input[name=?]", "tenant_detail[user_id]"

      assert_select "input[name=?]", "tenant_detail[name]"

      assert_select "input[name=?]", "tenant_detail[cid]"

      assert_select "input[name=?]", "tenant_detail[village]"

      assert_select "input[name=?]", "tenant_detail[gewog]"

      assert_select "input[name=?]", "tenant_detail[dzongkhag]"

      assert_select "input[name=?]", "tenant_detail[total_family_memeber]"

      assert_select "input[name=?]", "tenant_detail[phone_no]"
    end
  end
end
