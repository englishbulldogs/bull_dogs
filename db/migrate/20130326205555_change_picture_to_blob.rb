class ChangePictureToBlob < ActiveRecord::Migration
  change_table :images do |f|
  	f.change :picture, :blob
  end
end
