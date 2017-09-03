# frozen_string_literal: true

# avatar class
class AvatarUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  version :thumb do
    process resize_to_fill: [50, 50]
  end

  storage :file
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end
