class HomeController < ApplicationController
	layout 'application'
	def index
		# @randalbum = Album.offset(rand(Album.count)).first
		@rand = Album.offset(rand(images.count)).first
	end
end
