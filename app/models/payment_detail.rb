class PaymentDetail < ApplicationRecord
    has_one_attached :image, :dependent => :destroy
    belongs_to :tenant_id

end
