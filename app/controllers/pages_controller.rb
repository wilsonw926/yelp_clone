class PagesController < ApplicationController

	def about_us
	end

	def contact_us
	end
  	
	def american
		@american_restaurants = Restaurant.where(category_id: 1)
	end

	def italian
		@italian_restaurants = Restaurant.where(category_id: 4)
	end

	def asian
		@asian_restaurants = Restaurant.where(category_id: 2)
	end

	def mexican
		@mexican_restaurants = Restaurant.where(category_id: 6)
	end

	def mediterranean
		@mediterranean_restaurants = Restaurant.where(category_id: 5)
	end

	def french
		@french_restaurants = Restaurant.where(category_id: 3)
	end

end
