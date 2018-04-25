# frozen_string_literal: true

if Rails.configuration.use_s3
  CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     ENV.fetch('AWS_KEY_ID'),
      aws_secret_access_key: ENV.fetch('AWS_SECRET_KEY'),
      region:                ENV.fetch('AWS_S3_REGION')
    }
    config.fog_directory  = ENV.fetch('AWS_S3_BUCKET')
    config.fog_public     = false
    config.fog_attributes = { cache_control: "max-age=#{365.days.to_i}" }
  end
end
