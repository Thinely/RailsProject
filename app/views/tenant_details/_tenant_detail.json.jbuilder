json.extract! tenant_detail, :id, :user_id, :name, :cid, :village, :gewog, :dzongkhag, :total_family_memeber, :phone_no, :created_at, :updated_at
json.url tenant_detail_url(tenant_detail, format: :json)
