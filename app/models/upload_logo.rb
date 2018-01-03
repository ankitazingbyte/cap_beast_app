class UploadLogo < ApplicationRecord
	mount_uploader :logo, LogoUploader
end
