class AddAlbumCoverField < ActiveRecord::Migration
  change_table :images do |t|
	t.boolean "albumcover"
end
end
