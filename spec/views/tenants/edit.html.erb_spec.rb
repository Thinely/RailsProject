require 'rails_helper'

RSpec.describe "tenants/edit", type: :view do
  before(:each) do
    @tenant = assign(:tenant, Tenant.create!(
      name: "MyString",
      cid: 1,
      village: "MyString",
      gewog: "MyString",
      dzongkhag: "MyString",
      flat_no: "MyString",
      total_family_members: 1,
      user_id: nil,
      house_id: nil
    ))
  end

  it "renders the edit tenant form" do
    render

    assert_select "form[action=?][method=?]", tenant_path(@tenant), "post" do

      assert_select "input[name=?]", "tenant[name]"

      assert_select "input[name=?]", "tenant[cid]"

      assert_select "input[name=?]", "tenant[village]"

      assert_select "input[name=?]", "tenant[gewog]"

      assert_select "input[name=?]", "tenant[dzongkhag]"

      assert_select "input[name=?]", "tenant[flat_no]"

      assert_select "input[name=?]", "tenant[total_family_members]"

      assert_select "input[name=?]", "tenant[user_id_id]"

      assert_select "input[name=?]", "tenant[house_id_id]"
    end
  end
end
