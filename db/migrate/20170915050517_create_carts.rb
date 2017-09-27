class CreateCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :carts do |t|
      t.integer :user_id,    null:false
      t.integer :product_id, null:false
      t.string :status,      null:false
      t.integer :number,     null:false
      t.integer :payment_id, null:false
      t.timestamps
    end
  end
end
