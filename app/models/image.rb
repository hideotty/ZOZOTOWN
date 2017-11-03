class Image < ApplicationRecord
  belongs_to :product, optional: true
  mount_uploader :image, ImageUploader

  enum status: { main_image: 0, sub_image: 1 }
end
