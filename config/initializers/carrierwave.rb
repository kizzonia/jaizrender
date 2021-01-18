if Rails.env.production?
require 'carrierwave/storage/fog'
CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => ENV['DO_ACCESS_KEY_ID'],
    :aws_secret_access_key  => ENV['DO_SECRET_ACCESS_KEY'],
    :region                 => 'nyc3',
    :endpoint               => 'https://nyc3.digitaloceanspaces.com'
  }
  config.fog_directory  = ENV['DO_BUCKET_NAME']
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}
end


end
