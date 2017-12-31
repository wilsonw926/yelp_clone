class RestaurantsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :new]
  
  def index
    #Testing Purposes
    visitor_latitude = 37.875356
    visitor_longitude = -122.265755

    #visitor_latitude = request.location.latitude
    #visitor_longitude = request.location.longitude

    @restaurants = Restaurant.near([visitor_latitude, visitor_longitude], 20)
    @italian_restaurants = Restaurant.where(category_id: 4).near([visitor_latitude, visitor_longitude], 20)
    @asian_restaurants = Restaurant.where(category_id: 2).near([visitor_latitude, visitor_longitude], 20)
    @american_restaurants = Restaurant.where(category_id: 1).near([visitor_latitude, visitor_longitude], 20)
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      flash['success'] = 'Restaurant has been created succesfully.'
      redirect_to @restaurant
    else
      flash[:error] = @restaurant.errors.full_messages.to_sentence
      redirect_to new_restaurant_path
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = Review.where(restaurant_id: @restaurant)
    if @reviews.blank?
      @avg_rating = 0
    else
      @avg_rating = @reviews.average(:rating).round(2)
    end
  end

  def search
    if params[:category].blank?
      @restaurants = Restaurant.all
    else
      @restaurants = Restaurant.search(params)
    end
  end

  private
    def restaurant_params
      params.require(:restaurant).permit(:name, :description, :category_id, :address1, :address2,
                         :city, :state, :zipcode, :phone, :email, :image)
    end

end