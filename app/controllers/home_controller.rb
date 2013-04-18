class HomeController < ApplicationController
	layout 'application'
	def index
		offset = rand(Album.count)
		@randalbum = Album.first(:offset => offset)
		offset2 = rand(@randalbum.images.count)
		@rand = @randalbum.images.first(:offset => offset2)
	end
end
