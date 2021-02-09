class Character < ApplicationRecord
    belongs_to :campaign
    belongs_to :user

    validates :character, :user_id, :campaign_id, presence: true
end
