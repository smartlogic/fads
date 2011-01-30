class CreativeUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  version :scaled do
    process :resize_to_fit => [110, 80]
  end

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end
