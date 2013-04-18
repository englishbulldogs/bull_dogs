class AddDadtoAlbums < ActiveRecord::Migration
  change_table "albums" do |t|
  	t.string :dad
  	t.string :dadpic
  end
end
