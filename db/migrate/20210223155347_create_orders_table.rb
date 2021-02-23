class CreateOrdersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :address
      t.string :item
      t.integer :item_price
      t.integer :total
    end
  end
end
