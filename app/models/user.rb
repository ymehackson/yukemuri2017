class User < ApplicationRecord
  has_many :picture_users
  has_many :picture, through: :picture_users
  mount_uploader :image, ImageUploader

  enum real_type: { gaya: 0 }
end
