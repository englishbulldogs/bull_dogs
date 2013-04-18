class HomeController < ApplicationController
	layout 'application'
	def index
		@randalbum = Album.offset(rand(Album.count)).first
		@rand = @randalbum.images.offset(rand(@randalbum.images.count)).first
	end
end
