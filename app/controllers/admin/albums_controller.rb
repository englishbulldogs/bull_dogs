class Admin::AlbumsController < ApplicationController
  layout 'dashboard'
  http_basic_authenticate_with :name => "Nancy", :password => "englishPups.101"
  respond_to :html, :json
  def index
    @albums = Album.all
  end
  def new
    @album = Album.new
  end
  def create
    @album = Album.new(params[:album])
    if @album.save
      flash[:notice] = "Successfully created album!"
      redirect_to [:admin, @album, :images]
    else
      render "new"
    end
  end
  def edit
    @album = Album.find(params[:id])
  end
  def show
    @album = Album.find(params[:id])
  end
  def update
    @album = Album.find(params[:id])
    @album.update_attributes(params[:album])
    if @album.update_attributes(params[:album])
      respond_with @album
      flash[:notice] = "Successfully updated Album"
    else
      render "edit"
    end
  end
  def update_form
    @album = Album.find(params[:id])
    @album.update_attributes(params[:album])
    if @album.update_attributes(params[:album])
      redirect_to [:admin, :albums]
      flash[:notice] = "Successfully updated Album"
    else
      render "edit"
    end
  end
  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    @id = @album.id
    FileUtils.remove_dir("#{Rails.root}/public/uploads/image/picture/#{@id}", :force => true)
    respond_to do |format|
      format.js   { render :layout => false }
    end
    redirect_to admin_albums_path
  end
  def random_image
    @image_files = %w( .jpg .gif .png )
    @files ||= Dir.entries(
      "#{RAILS_ROOT}/public/uploads").delete_if { |x|
        !@image_files.index(x[-4,4])
      }

    file = @files[rand(@files.length)];
    @files.delete file

    return "/images/logos/#{file}"
  end
end
