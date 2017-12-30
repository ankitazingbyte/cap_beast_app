Rails.application.routes.draw do
	resources :custom_snapbacks
  	get 'home/index' 
 	root 'home#index' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 	get 'home/custom_snapbacks'
	get 'home/custom_fitted_hats'
	get 'home/custom_dad_hats'
	get 'home/custom_camo_hats'
	
end
