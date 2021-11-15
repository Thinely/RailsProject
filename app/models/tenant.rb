class Tenant < ApplicationRecord
  belongs_to :user_id
  belongs_to :house_id
  has_many :payment_details
  has_many :complaint_details
end
