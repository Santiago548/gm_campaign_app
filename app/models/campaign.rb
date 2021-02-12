class Campaign < ApplicationRecord
    has_many :characters
    has_many :users, through: :characters

    # scope :campaign_order_alphabet, -> { where(game_master: true)}
end
