class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :food_id
      t.integer :user_id
      t.decimal :cost, precision: 6, scale: 2 

      t.timestamps
    end
  end
end
