class Idea < ApplicationRecord
    belongs_to :ouchi
    belongs_to :user
    has_many :likes, dependent: :destroy
    has_many :liked_users, through: :likes, source: :user
end
