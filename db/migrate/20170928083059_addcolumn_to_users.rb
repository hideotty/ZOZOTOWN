class AddcolumnToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :kana_name, :string,     null:false
    add_column :users, :postal_code, :integer,  null:false
    add_column :users, :address, :string,        null:false
    add_column :users, :phone_number, :integer
  end
end
