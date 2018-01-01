class CustomBeanie < ApplicationRecord
	mount_uploader :image, ImageUploader
end
