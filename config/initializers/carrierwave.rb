CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'AKIAINCUBMB5YMNCKYZA',
    :aws_secret_access_key  => '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',
    :region                 => 'us-east-1'
  }
  
  config.cache_dir = "#{Rails.root}/tmp/uploads"

  config.fog_directory  = 'bull_dogs'
  config.fog_attributes = {'Cache-Control' => 'max-age=315576000'}
end

module CarrierWave
  module RMagick
 
    # Rotates the image based on the EXIF Orientation
    def fix_exif_rotation
      manipulate! do |img|
        img.auto_orient!
        img = yield(img) if block_given?
        img
      end
    end
 
    # Strips out all embedded information from the image
    def strip
      manipulate! do |img|
        img.strip!
        img = yield(img) if block_given?
        img
      end
    end
 
    # Reduces the quality of the image to the percentage given
    def quality(percentage)
      manipulate! do |img|
        img.write(current_path){ self.quality = percentage }
        img = yield(img) if block_given?
        img
      end
    end
 
  end
end