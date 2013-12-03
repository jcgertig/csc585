CarrierWave.configure do |config|
  config.root = Rails.root.join('tmp')
  config.cache_dir = 'carrierwave'

  config.fog_credentials = {
    :provider               => 'AWS',                        	    # required
    :aws_access_key_id      => ENV['AWS_ID'],                     # required
    :aws_secret_access_key  => ENV['AWS_Secret'],                 # required
    :region                 => 'us-west-2'
  }
  config.fog_directory  = 'csc585'                     # required
  config.fog_public     = true                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end