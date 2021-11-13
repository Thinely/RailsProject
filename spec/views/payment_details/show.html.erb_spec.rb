require 'rails_helper'

RSpec.describe "payment_details/show", type: :view do
  before(:each) do
    @payment_detail = assign(:payment_detail, PaymentDetail.create!(
      tenant_id: 2,
      amount: 3.5,
      payment_mode: "Payment Mode",
      payment_month: "Payment Month",
      image: "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/Payment Mode/)
    expect(rendered).to match(/Payment Month/)
    expect(rendered).to match(/Image/)
  end
end
