class Photo < ActiveRecord::Base
	belongs_to :shoot
  validates :shoot_id, presence: true
end
