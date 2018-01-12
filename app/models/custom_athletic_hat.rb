class CustomAthleticHat < ApplicationRecord
	mount_uploader :image, ImageUploader
	mount_uploader :back_image, BackImageUploader
	mount_uploader :left_image, LeftImageUploader
	mount_uploader :right_image, RightImageUploader
	mount_uploader :logo, LogoUploader
	belongs_to :order, optional: true
	has_many :order_items
	belongs_to :brand
end
