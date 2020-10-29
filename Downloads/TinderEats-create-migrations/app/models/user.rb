class User < ApplicationRecord
	has_many :restaurants
	has_many :reviews
	has_many :cuisines, through: :restaurants  
	has_many :restaurants, through: :reviews	
end
