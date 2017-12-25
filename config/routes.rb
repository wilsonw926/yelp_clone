Rails.application.routes.draw do
	root 'restaurants#index'
	match '/about_us', to: 'pages#about_us', via: :get
	match '/contact_us', to: 'pages#contact_us', via: :get
end
