class HomeController < ApplicationController
	layout 'application'
	def index
		# @randalbum = Album.offset(rand(Album.count)).first
		@rand = Image.offset(rand(Image.count)).first
	end
end
