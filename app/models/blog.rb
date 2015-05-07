class Blog < ActiveRecord::Base
	mount_uploader :image, BlogImageUploader
end
