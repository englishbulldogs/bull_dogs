class ChangeAlbumImageToImages < ActiveRecord::Migration
  change_table :images do |t|
  	t.change :albumcover, :boolean, :default => true
  end
end
