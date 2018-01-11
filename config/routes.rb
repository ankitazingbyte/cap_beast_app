Rails.application.routes.draw do
  resources :brands
    get 'home/index' 
    root 'home#index' 
  devise_for :users
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
  get 'home/custom_snapbacks'
  get 'home/custom_fitted_hats'
  get 'home/custom_dad_hats'
  get 'home/custom_camo_hats'
  get 'home/login_form'
  get 'home/forget_psw'
  get 'home/signup_form'
  get 'home/checkout'
  get 'home/checkout_shipping'
  get 'home/checkout_payment'
  resources :shippings
  resources :addresses
  resources :order_statuses
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  resources :orders
	resources :charges
  resource :cart, only: [:show]
end
