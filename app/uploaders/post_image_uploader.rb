# frozen_string_literal: true

# CarrierWave - Support adding `image` to Post records
class PostImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  version :thumb do
    process resize_to_fit: [200, 200]
  end

  # Choose what kind of storage to use for this uploader:
  if Rails.configuration.use_s3
    storage :fog
  else
    storage :file
  end

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end
