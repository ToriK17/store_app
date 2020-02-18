class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :code
      t.string :url
      t.string :brands
      t.string :product_name
      t.string :categories
      t.string :stores

      t.timestamps
    end
  end
end
