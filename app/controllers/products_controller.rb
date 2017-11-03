class ProductsController < ApplicationController
  def index
    @recentproducts = Product.order('id DESC').limit(6)
    @allproducts = Product.all
  end

  def new
    @product = Product.new
    @product.images.build
  end

  def create
    @product = current_shop.products.new(params_product)
    if @product.save
      redirect_to root_path, notice:"商品情報を保存しました"
    else
      flash.now[:alert] = "商品情報を保存できませんでした"
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def upload
    @image = Image.create({
        :product_id => params[:id],
        :image => params[:images][:image]
    })
  end

  def update
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end


  def show
    @product = Product.find(params[:id])
    images = []
    @product.images.each do |img|
      if img.status == "main_image"
        @main_image = img
      else
        images << img
      end
    @sub_image = images
    end
  end

  private
  def params_product
  params.require(:product).permit(:name, :cloth_group, :cloth_category, :cloth_type, :size, :color, :brand, :body, :price, images_attributes: [:image, :status])
  end
end
