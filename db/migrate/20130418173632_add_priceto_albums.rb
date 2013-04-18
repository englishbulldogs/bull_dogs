class AddPricetoAlbums < ActiveRecord::Migration
  change_table "albums" do |t|
  	t.string :price
  end
end
