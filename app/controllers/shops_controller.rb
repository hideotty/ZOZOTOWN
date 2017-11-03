class ShopsController < ApplicationController
  def index

  end

  def show
    @shop = Shop.find(params[:id])
    @products = @shop.products
    @recentproducts = @shop.products.order('id DESC').limit(5)
  end

end
