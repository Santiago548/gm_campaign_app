class Character < ApplicationRecord
    belongs_to :campaign
    belongs_to :user
    
    validates :user_id, :campaign_id, presence: true
    scope :character_order_alphabet, -> { order(level: :asc)}
end
