require 'rails_helper'

RSpec.describe "tenants/new", type: :view do
  before(:each) do
    assign(:tenant, Tenant.new(
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

  it "renders new tenant form" do
    render

    assert_select "form[action=?][method=?]", tenants_path, "post" do

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
