class Campaign < ApplicationRecord
    has_many :characters
    has_many :users, through: :characters

    scope :campaign_order_alphabet, -> { order(name: :asc)}

    validates :name, :gm_name,  :gm_email, presence: true
    validates :name, uniqueness: true
end
