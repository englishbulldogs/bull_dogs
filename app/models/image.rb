class Image < ActiveRecord::Base
	attr_accessible :title, :description, :picture, :image_id, :album_id, :albumcover, :image
	belongs_to :album
	accepts_nested_attributes_for :album
	mount_uploader :picture, PictureUploader
end
