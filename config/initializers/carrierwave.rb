if Rails.env.production?
require 'carrierwave/storage/fog'
CarrierWave.configure do |config|
  config.storage = :fog
 config.fog_provider = 'fog/aws'
  config.root = Rails.root.join('tmp') # adding these...
  config.cache_dir = 'carrierwave' # ...two lines

  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAJ5UFI6KSULXTSPGA',                        # required
    :aws_secret_access_key  => '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',                     # required
    :endpoint => 'https://nyc3.digitaloceanspaces.com',
    :region => 'nyc3'
  }
  config.fog_directory  = 'jaiz'                             # required
  config.fog_public     = true                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end
end
