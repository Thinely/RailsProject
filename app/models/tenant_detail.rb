class TenantDetail < ApplicationRecord
    belongs_to :users, foreign_key: 'user_id', primary_key: 'id', optional: true
end
