json.extract! complaint_detail, :id, :tenant_id, :complaint_details, :complaint_date, :created_at, :updated_at
json.url complaint_detail_url(complaint_detail, format: :json)
