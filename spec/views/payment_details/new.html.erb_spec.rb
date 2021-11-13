require 'rails_helper'

RSpec.describe "payment_details/new", type: :view do
  before(:each) do
    assign(:payment_detail, PaymentDetail.new(
      tenant_id: 1,
      amount: 1.5,
      payment_mode: "MyString",
      payment_month: "MyString",
      image: "MyString"
    ))
  end

  it "renders new payment_detail form" do
    render

    assert_select "form[action=?][method=?]", payment_details_path, "post" do

      assert_select "input[name=?]", "payment_detail[tenant_id]"

      assert_select "input[name=?]", "payment_detail[amount]"

      assert_select "input[name=?]", "payment_detail[payment_mode]"

      assert_select "input[name=?]", "payment_detail[payment_month]"

      assert_select "input[name=?]", "payment_detail[image]"
    end
  end
end
