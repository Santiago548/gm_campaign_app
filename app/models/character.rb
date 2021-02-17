class Character < ApplicationRecord
    belongs_to :campaign
    belongs_to :user
    
    scope :character_order_level, -> { order(level: :asc)}

end
