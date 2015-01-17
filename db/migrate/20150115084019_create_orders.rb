class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.integer :product_id
      t.integer :customer_id
      t.integer :action

      t.timestamps null: false
    end
  end
end
