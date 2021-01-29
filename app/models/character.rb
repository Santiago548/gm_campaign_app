class Character < ApplicationRecord
    belongs_to :campaign
    belongs_to :user
    has_many :languages
    has_many :proficiencies
end
