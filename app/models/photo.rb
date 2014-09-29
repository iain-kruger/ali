# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  shoot_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Photo < ActiveRecord::Base
	belongs_to :shoot
  validates_presence_of :shoot
end
