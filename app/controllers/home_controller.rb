class HomeController < ApplicationController
	layout 'application'
	def index
		@randalbum = Album.first(:order => "RANDOM()")
		@rand = @randalbum.images.first(:order => "RANDOM()")
	end
end
