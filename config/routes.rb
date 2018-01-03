Rails.application.routes.draw do
  resources :upload_logos
  resources :add_texts
  resources :custom_military_hats
  resources :custom_golf_hats
  resources :custom_athletic_hats
  resources :custom_bucket_hats
  resources :custom_trucker_hats
  resources :custom_panel_hats
  resources :custom_beanies
  resources :custom_camo_hats
  resources :custom_strapback_hats
  resources :custom_fitted_hats
	resources :custom_snapbacks
  	get 'home/index' 
 	root 'home#index' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 	get 'home/custom_snapbacks'
	get 'home/custom_fitted_hats'
	get 'home/custom_dad_hats'
	get 'home/custom_camo_hats'
  resources :order_statuses
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  resources :orders
	
end
