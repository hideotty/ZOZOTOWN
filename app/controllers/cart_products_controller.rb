class CartProductsController < ApplicationController

  def create
    @cart = current_user.cart_products.new(cart_products_params)
    if @cart.save
      redirect_to carts_path, notice: "カートに追加しました"
    else
      flash.now[:alart] = "カートに保存できませんでした"
      redirect_to product_path(params[:product_id])
    end
  end

  def show
    # binding.pry
    # @carts = Cart.find(current_user)
    # @product = Product.find()
  end

  def destroy
    product = current_user.cart_products.where(product_id: params[:id])
    product[0].destroy
    redirect_to carts_path
  end

  private
  def cart_products_params
    params.permit(:status, :product_id, :lot)
  end
end
