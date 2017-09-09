class User < ApplicationRecord
  mount_uploader :image, ImageUploader

  enum real_type: { gaya: 0 }
end
