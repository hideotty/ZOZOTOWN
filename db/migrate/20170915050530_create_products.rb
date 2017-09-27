class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :cloth_group,    null:false
      t.string :cloth_category, null:false
      t.string :cloth_type,     null:false
      t.string :color
      t.string :size,           null:false
      t.string :price,          null:false
      t.string :brand,          null:false
      t.text   :body
      t.timestamps
    end
  end
end
