class Album < ActiveRecord::Base
	attr_accessible :title, :description, :album_id, :picture, :dad, :dadpic, :price
	has_many :images,  :dependent => :destroy
	validates :title, :description, :presence => true
	mount_uploader :picture, AlbumUploader
	mount_uploader :dadpic, AlbumUploader
end
