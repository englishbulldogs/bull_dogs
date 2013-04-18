class HomeController < ApplicationController
	layout 'application'
	def index
		@randalbum = Album.first(:order => 'RAND()')
		@rand = @randalbum.images.first(:order => 'RAND()')
	end
end
