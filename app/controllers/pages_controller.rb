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

end
