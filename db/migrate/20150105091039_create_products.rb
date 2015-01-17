class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :images
      t.text :introduce
      t.integer :popular
      t.integer :new_arrivals
      t.integer :best_sellers
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
