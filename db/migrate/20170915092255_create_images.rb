class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.integer :product_id
      t.text :image
      t.timestamps
    end
  end
end
