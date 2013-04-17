class Reset < ActiveRecord::Migration
  create_table "albums", :force => true do |t|
    t.string   "title",       :null => false
    t.text     "description"
    t.date     "date"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "album_id"
    t.string   "picture"
  end

  create_table "images", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "date"
    t.integer  "album_id"
    t.integer  "image_id"
    t.binary   "picture"
    t.binary   "albumcover"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end
end
