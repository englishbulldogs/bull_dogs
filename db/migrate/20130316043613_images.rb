class Images < ActiveRecord::Migration
  def up
  	create_table "images", :force => true do |t|
      t.string   "title"
      t.string   "description"
      t.datetime "date"
      t.integer  "album_id"
      t.integer  "image_id"
      t.string   "picture"
  	end
end
  def down
  	drop_table :images
  end
end
