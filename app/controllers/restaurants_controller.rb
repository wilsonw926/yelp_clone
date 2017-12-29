class RestaurantsController < ApplicationController
    
  def index
    
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    redirect_to @restaurant
  end

  def show
    
  end

  private
    def restaurant_params
      params.require(:restaurant).permit(:name, :description, :address1, :address2,
                         :city, :state, :zipcode, :phone, :email)
    end

end