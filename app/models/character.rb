class Character < ApplicationRecord
    belongs_to :campaign
    belongs_to :user
    has_many :languages
    has_many :proficiencies
    accepts_nested_attributes_for :languages
    accepts_nested_attributes_for :proficiencies
end
