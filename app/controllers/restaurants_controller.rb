class RestaurantsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :new, :edit, :update]
  before_action :is_admin?, only: [:edit, :update]

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
    @mexican_restaurants = Restaurant.where(category_id: 6).near([visitor_latitude, visitor_longitude], 20)
    @mediterranean_restaurants = Restaurant.where(category_id: 5).near([visitor_latitude, visitor_longitude], 20)
    @french_restaurants = Restaurant.where(category_id: 3).near([visitor_latitude, visitor_longitude], 20)
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

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    redirect_to @restaurant
  end

  private
    def restaurant_params
      params.require(:restaurant).permit(:name, :description, :category_id, :address1, :address2,
                         :city, :state, :zipcode, :phone, :email, :image)
    end

    def is_admin?
      if !current_user.try(:admin?)
        flash[:danger] = "You are not authorized to do this action."
        redirect_to root_path
      end
    end

end