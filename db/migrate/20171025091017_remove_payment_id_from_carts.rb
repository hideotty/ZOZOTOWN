class RemovePaymentIdFromCarts < ActiveRecord::Migration[5.0]
  def change
    remove_column :carts, :payment_id, :integer
    remove_column :carts, :status, :string
    add_column :carts, :status, :string
  end
end
