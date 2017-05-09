class Idea < ActiveRecord::Base
	mount_uploader :picture, ::PictureUploader
	has_many :comments
	has_many :users, through: :ratings
end
