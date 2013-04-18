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