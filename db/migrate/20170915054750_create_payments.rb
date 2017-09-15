class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.integer :user_id
      t.integer :amount
      t.integer :status
      t.timestamps
    end
  end
end
