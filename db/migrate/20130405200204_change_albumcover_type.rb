class ChangeAlbumcoverType < ActiveRecord::Migration
  change_table :images do |f|
  	f.change :albumcover, :blob
  end
end
