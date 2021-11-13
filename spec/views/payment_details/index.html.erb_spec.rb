require 'rails_helper'

RSpec.describe "payment_details/index", type: :view do
  before(:each) do
    assign(:payment_details, [
      PaymentDetail.create!(
        tenant_id: 2,
        amount: 3.5,
        payment_mode: "Payment Mode",
        payment_month: "Payment Month",
        image: "Image"
      ),
      PaymentDetail.create!(
        tenant_id: 2,
        amount: 3.5,
        payment_mode: "Payment Mode",
        payment_month: "Payment Month",
        image: "Image"
      )
    ])
  end

  it "renders a list of payment_details" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.5.to_s, count: 2
    assert_select "tr>td", text: "Payment Mode".to_s, count: 2
    assert_select "tr>td", text: "Payment Month".to_s, count: 2
    assert_select "tr>td", text: "Image".to_s, count: 2
  end
end
