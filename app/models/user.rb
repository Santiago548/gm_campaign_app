class User < ApplicationRecord
    has_secure_password
    validates :username, :first_name, :last_name, :email, presence: true
    validates :username, :email, uniqueness: true
    
    has_many :characters
    has_many :campaigns, through: :characters

    scope :game_master, -> { where(game_master: true)}
    scope :player, -> { where(game_master: false)}

    def self.create_from_omniauth(auth)
        User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
            u.username = auth['info']['first_name']
            u.email = auth['info']['email']
            u.first_name = auth['info']['first_name']
            u.last_name = auth['info']['last_name']
            u.password = SecureRandom.hex(12)
        end
    end
end
