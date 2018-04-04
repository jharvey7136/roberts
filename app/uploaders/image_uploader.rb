class ImageUploader < CarrierWave::Uploader::Base

  # mini magick gem for image processing
  include CarrierWave::MiniMagick

  if Rails.env.production?
    storage :fog
  else
    storage :file
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Create different versions of your uploaded files:
  version :thumb do
    process :resize_to_fit => [100, 100]
  end

  version :medium do
    process :resize_to_fit => [380, 1080]
  end



  version :default do
    process :resize_to_fit => [900, 1080]
  end




  def extension_whitelist
    %w(jpg jpeg gif png)
  end




end
