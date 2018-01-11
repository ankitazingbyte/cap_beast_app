class Brand < ApplicationRecord
	has_many :custom_snapback_brands
	has_many :custom_snapbacks, through: :custom_snapback_brands
end
