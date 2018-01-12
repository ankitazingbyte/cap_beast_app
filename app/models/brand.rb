class Brand < ApplicationRecord
	has_many :custom_snapbacks
	has_many :custom_strapback_hats
	has_many :custom_athletic_hats
	has_many :custom_beanies
	has_many :custom_trucker_hats
	has_many :custom_panel_hats
	has_many :custom_military_hats
	has_many :custom_golf_hats
	has_many :custom_fitted_hats
	has_many :custom_camo_hats
	has_many :custom_bucket_hats
end
