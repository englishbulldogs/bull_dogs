class HomeController < ApplicationController
	layout 'application'
	def index
		@randalbum = Album.find(:all).order("RANDOM()").first
		@rand = @randalbum.images.find(:all).order("RANDOM()").first
	end
end
