class Restaurant < ApplicationRecord

	has_many :reviews
	belongs_to :category
	validates_presence_of :name
	validates_presence_of :description
	validates_presence_of :city
	validates_presence_of :state
	
	geocoded_by :full_address
	after_validation :geocode

	has_attached_file :image,
		:path => ":rails_root/public/system/:attachment/:id/:style/:filename",
		:url => "/system/:attachment/:id/:style/:filename",
		:styles => { :small  => "150x150", :medium => "300x300", :large => "500x500"},
		:default_url => "empty.png"

	validates_attachment_content_type :image,
		:content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
		#:matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]

	def full_address
		[address1, address2, city, state, zipcode].join(', ')
	end

	def self.search(params)
		restaurants = Restaurant.where(category_id: params[:category].to_i)
		restaurants = restaurants.where("name like ? or description like ?", "%#{params[:search]}%", "%#{params[:search]}%") if params[:search].present?
		restaurants = restaurants.near(params[:location], 20) if params[:location].present?
		return restaurants
	end

end
