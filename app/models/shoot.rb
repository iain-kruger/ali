# == Schema Information
#
# Table name: shoots
#
#  id          :integer          not null, primary key
#  catagory    :string(255)
#  name        :string(255)
#  discription :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  thumbnail   :string(255)
#

class Shoot < ActiveRecord::Base
	has_many :photos, dependent: :destroy
	mount_uploader :thumbnail, ThuumbnailUploader
end
