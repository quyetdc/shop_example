class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :phone
      t.string :emails
      t.string :address
      t.integer :level

      t.timestamps null: false
    end
  end
end
