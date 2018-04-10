# frozen_string_literal: true

# CarrierWave - Support adding `avatar` to Member records
class AvatarUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  version :thumb do
    process resize_to_fill: [50, 50]
  end

  storage :file

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url
    '/fallback/' + [version_name, 'default-avatar.jpeg'].compact.join('_')
  end
end
