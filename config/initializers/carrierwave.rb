if Rails.env.production?
require 'carrierwave/storage/fog'
CarrierWave.configure do |config|
  config.storage = :fog
 config.fog_provider = 'fog/aws'
  config.root = Rails.root.join('tmp') # adding these...
  config.cache_dir = 'carrierwave' # ...two lines

  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => ENV['DO_ACCESS_KEY_ID'],                        # required
    :aws_secret_access_key  => ENV['DO_SECRET_ACCESS_KEY'],                     # required

    :endpoint => 'nyc3.digitaloceanspaces.com',
    :region => 'nyc3',
    :host => ENV['DO_HOST']
  }
  config.fog_directory  = ENV['DO_BUCKET_NAME']                            # required
  config.asset_host =  ENV['DO_HOST']
  config.fog_public     = true                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end
end
