class AddcolumnToShop < ActiveRecord::Migration[5.0]
  def change
    add_column :shops, :kana_name, :string,        null:false
    add_column :shops, :postal_code, :integer,     null:false
    add_column :shops, :address, :integer,         null:false
    add_column :shops, :phone_number, :integer,    null:false
  end
end
