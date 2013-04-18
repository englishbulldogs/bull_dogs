class HomeController < ApplicationController
	layout 'application'
	def index
		@randalbum = Album.find(:first, :order => "RANDOM()")
		@rand = @randalbum.images.find(:first, :order => "RANDOM()")
	end
end
