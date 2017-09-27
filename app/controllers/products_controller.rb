class ProductsController < ApplicationController
  def index
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params_product)
    if @product.save
      redirect_to root_path, notice:"商品情報を保存しました"
    else
      flash.now[:alert] = "商品情報を保存できませんでした"
      render :new
    end
  end

  def edit
    @product = Product.find(1)
  end

  def update
  end

  def show
  end

  private
  def params_product
  params.require(:product).permit(:name, :cloth_group, :cloth_category, :cloth_type, :size, :color, :brand,  :price, image_attributes:[:image])
  end
end
