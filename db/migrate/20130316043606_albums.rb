class Albums < ActiveRecord::Migration
  def up
  	create_table "albums", :force => true do |t|
	    t.string   "title",       :null => false
	    t.text     "description"
	    t.date     "date"
	    t.datetime "created_at",  :null => false
	    t.datetime "updated_at",  :null => false
	    t.integer  "album_id"
  	end
  end
end
