Rails.application.routes.draw do

  devise_for :users

  resources :restaurants do
  	resources :reviews, except: [:index, :show]
  	collection do
  		get 'search'
  	end
  end
  
  root to: 'restaurants#index'
  

  match '/about_us', to: 'pages#about_us', via: :get
  match '/contact_us', to: 'pages#contact_us', via: :get
  match '/american', to: 'pages#american', via: :get
  match '/asian', to: 'pages#asian', via: :get
  match '/italian', to: 'pages#italian', via: :get
  match '/french', to: 'pages#french', via: :get
  match '/mexican', to: 'pages#mexican', via: :get
  match '/mediterranean', to: 'pages#mediterranean', via: :get
end
