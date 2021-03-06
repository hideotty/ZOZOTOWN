class CartsController < ApplicationController
  def index
    @cartproducts = CartProduct.where(user_id: current_user.id)
    @sumprice = 0
    @products = []
    @cartproducts.each do |product|
      p_id = product.product_id
      @product = Product.find(p_id)
      @price = @product.price.to_i
      @sumprice += @product.price.to_i if @product.present?
      @products << @product
    end
    if 0 < @sumprice && @sumprice <= 3999
      @postage = 399
    elsif 3999 < @sumprice
      @postage = 0
    else
      @postage = 0
    end
  end
end
