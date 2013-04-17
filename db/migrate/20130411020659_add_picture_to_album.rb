class AddPictureToAlbum < ActiveRecord::Migration
  change_table :albums do |f|
  	f.string :picture
  end
end
