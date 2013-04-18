class HomeController < ApplicationController
	layout 'application'
	def index
		@randalbum = Album.offset(rand(Album.count)).first
		@randimg = !@randomalbum.nil? ? @randalbum.images.offset(rand(@randalbum.images.count)).first.picture : "nil images"
	end
end
