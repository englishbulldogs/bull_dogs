class HomeController < ApplicationController
	layout 'application'
	def index
		@randalbum = Album.offset(rand(Album.count)).first(:select => 'id')
	end
end
