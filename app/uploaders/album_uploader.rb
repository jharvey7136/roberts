class AlbumUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  storage :file



  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  process :resize_to_fit => [350, 10000]

 def extension_whitelist
   %w(jpg jpeg gif png)
 end

end
