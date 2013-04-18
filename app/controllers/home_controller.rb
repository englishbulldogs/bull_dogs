class HomeController < ApplicationController
	layout 'application'
	def index
		@randalbum = Album.first(:order => 'RANDOM()')
		@rand = Image.first(:order => 'RANDOM()')
	end
end
