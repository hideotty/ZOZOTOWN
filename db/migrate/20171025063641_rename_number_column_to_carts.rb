class RenameNumberColumnToCarts < ActiveRecord::Migration[5.0]
  def change
     rename_column :carts, :number, :lot
  end
end
