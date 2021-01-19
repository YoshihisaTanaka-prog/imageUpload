class UserUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  # 最大サイズを指定
  process resize_to_fit: [300, 200]

end
