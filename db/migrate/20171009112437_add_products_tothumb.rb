class AddProductsTothumb < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :thumb, :string
  end
end
