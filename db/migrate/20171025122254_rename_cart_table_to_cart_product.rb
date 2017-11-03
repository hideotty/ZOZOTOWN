class RenameCartTableToCartProduct < ActiveRecord::Migration[5.0]
  def change
    rename_table :carts, :cart_products
    rename_table :payments, :carts
  end
end
