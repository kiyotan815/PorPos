class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  process resize_to_limit: [1920, 1920]
  process convert: 'jpg'

  version :card_thumb do
    process resize_to_fit: [480, nil]
  end

  version :jumbo_thumb do
    process resize_to_fit: [670, nil]
  end

  def default_url
    'default.png'
  end

  # def filename
  #   super.chomp(File.extname(super)) + '.jpg' if original_filename.present?
  # end

  def filename
    "#{secure_token}.#{file.extension}" if original_filename.present?
  end

  def extension_whitelist
    %w[jpg jpeg gif png]
  end

  protected

  def secure_token
    var = :"@#{mounted_as}_secure_token"
    model.instance_variable_get(var) || model.instance_variable_set(var, SecureRandom.uuid)
  end
end
