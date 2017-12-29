class Restaurant < ApplicationRecord

	has_many :reviews
	belongs_to :category, optional: true
	validates :name, uniqueness: true, length: {minimum: 1}
	
end
