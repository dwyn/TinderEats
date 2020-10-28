class Restaurant < ApplicationRecord
    belongs_to :cuisine
    has_many :reviews
    has_many :users, through: :reviews
    has_many :contacts
    has_many :locations
end
