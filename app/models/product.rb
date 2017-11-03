class Product < ApplicationRecord
  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true
  has_many :users, through: :cart_products
 # belongs_to :shop
  has_many :cart_products, :dependent => :destroy
  belongs_to :shop
end
