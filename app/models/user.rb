class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :cart_products
  has_one :cart

  # before_create :build_default_cart

  # private
  # def build_default_cart
  #   build_cart
  #   true
  # end
end
