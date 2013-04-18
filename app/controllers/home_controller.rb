class HomeController < ApplicationController
	layout 'application'
	def index
		# @randalbum = Album.offset(rand(Album.count)).first
		@rand = Images.offset(rand(Images.count)).first
	end
end
