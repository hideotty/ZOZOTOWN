class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.string :name,           null:false
      t.string :adress,         null:false
      t.string :representitive, null:false
      t.timestamps
    end
  end
end
