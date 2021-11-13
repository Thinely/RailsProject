json.extract! payment_detail, :id, :tenant_id, :amount, :payment_date, :payment_mode, :payment_month, :image, :created_at, :updated_at
json.url payment_detail_url(payment_detail, format: :json)
