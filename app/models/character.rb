class Character < ApplicationRecord
    belongs_to :campaign
    belongs_to :user
    
    validates :user_id, :campaign_id, presence: true
end
