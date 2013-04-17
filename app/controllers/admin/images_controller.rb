class Admin::ImagesController < ApplicationController
	layout 'dashboard'
	http_basic_authenticate_with :name => "Nancy", :password => "englishPups.101"
	respond_to :html, :json
	#before_filter :split_hash, :only => [ :create, :update ]
	def index
		@album = Album.find(params[:album_id])
		@images = @album.images.all
	end
	def new
		@album = Album.find(params[:album_id])
		@image = @album.images.new
	end
	def create
    	params[:image][:picture].each do |image|
	    	@album = Album.find(params[:album_id])
	    	@params = {}
	    	@params['picture'] = image
	    	@image = @album.images.create(@params)
	   end
 		if @image.save
 			if params[:image][:picture].size > 1
				flash[:notice] = "Successfully added images!"
			else
				flash[:notice] = "Successfully added image!"
			end
  			redirect_to [:admin, @album, :images]
  		else
  			render "new"
  			flash[:notice] = "Did not successfully add image :("
		end
    end
	def show
		@album = Album.find(params[:album_id])
		@image = @album.images.find(params[:id])
	end
	def edit
		@album = Album.find(params[:album_id])
		@image = @album.images.find(params[:id])
	end
	def update
		@album = Album.find(params[:album_id])
		@image = @album.images.find(params[:id])
		if @image.update_attributes(params[:image])
			respond_with @image
			flash[:notice] = "Successfully updated Image"
		else
			render "edit"
		end
	end
	def update_form
		@album = Album.find(params[:album_id])
		@image = @album.images.find(params[:id])
		if @image.update_attributes(params[:image])
			flash[:notice] = "Successfully updated Image"
			redirect_to [:admin, @album, :images]
		else
			render "edit"
		end
	end
	def destroy
		@album = Album.find(params[:album_id])
	  	@image = @album.images.find(params[:id])
	  	@image.destroy
	  	@albumid = @album.id
	  	@id = @image.id
	  	FileUtils.remove_dir("#{Rails.root}/public/uploads/image/picture/#{@albumid}/#{@id}", :force => true)
	  	redirect_to admin_album_images_path(@album)
  	end
  	def ajaxUpdate
  		@album = Album.find(params[:album_id])
		@image = @album.images.find(params[:id])
		if @image.update_attributes(params[:image])
			flash[:notice] = "Successfully updated Image"
		else
			render "edit"
		end
  	end
  # 	def split_hash
  # 		@album = Album.find(params[:album_id])
		# @image = @album.images
  #   	array_of_pictures = params[:image][:picture]
  #   	array_of_pictures.each do |pic|
  #   		size = array_of_pictures.size.to_i
  #   		size.times {@image.build(params[:image], :picture => pic)}
  #   		@image.save
		# end
  # 	end
end
