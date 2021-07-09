class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :paymentMethod
      t.decimal :subtotal
      t.decimal :salesTax
      t.decimal :total

      t.integer :order_type, default: 0
      t.integer :order_status, default: 0

      t.timestamps
    end
  end
end
