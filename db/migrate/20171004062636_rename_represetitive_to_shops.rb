class RenameRepresetitiveToShops < ActiveRecord::Migration[5.0]
  def change
    rename_column :shops, :representitive, :representative
  end
end
