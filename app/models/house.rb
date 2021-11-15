class House < ApplicationRecord
    has_many :caretakers
    has_many :tenants                                      
end
