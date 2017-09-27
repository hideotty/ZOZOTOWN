class Product < ApplicationRecord
 has_many :images
 has_many :users, through: :cart
 belongs_to :shop
end
