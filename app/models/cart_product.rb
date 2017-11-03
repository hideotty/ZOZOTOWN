class CartProduct < ApplicationRecord
  # belongs_to :cart
  belongs_to :user
  belongs_to :product

enum status: { cart_in: 0, cart_in_paid: 1 }
end
