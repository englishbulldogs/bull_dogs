class HomeController < ApplicationController
	layout 'application'
	def index
		@randalbum = Album.order("RANDOM()").first
		@rand = @randalbum.images.order(rand("RANDOM()")).first
	end
end
