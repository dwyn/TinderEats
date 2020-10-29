class Restaurant < ApplicationRecord
  #has_many :cuisines was added. A restaurant can have many cuisines. 
  #In either case belongs_to or has_many needs a foreign key on the cuisines table.
  #any thoughts???
  has_many :cuisines
  has_many :reviews
  has_many :users, through: :reviews
  has_many :contacts
  has_many :locations
end
