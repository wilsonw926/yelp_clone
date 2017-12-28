class RestaurantsController < ApplicationController
  
  def index
    @restaurant = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    if @restaurant.save
      flash['success'] = 'Review has been created succesfully.'
      redirect_to @restaurant
    else
      flash.now['danger'] = 'There was a problem with your review.'
      render 'new'
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private
    def restaurant_params
      params.require(:restaurants).permit(:name, :description, :address1, :address2,
                         :city, :state, :zipcode, :phone, :email)
    end

end