class Picture < ApplicationRecord
  has_many :picture_users
  has_many :users, through: :picture_users
end
