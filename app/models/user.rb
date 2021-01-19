class User < ApplicationRecord
    mount_uploader :image, UserUploader
end
