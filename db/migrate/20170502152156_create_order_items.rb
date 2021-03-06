class CreateOrderItems < ActiveRecord::Migration[5.0]
  def change
    create_table :order_items do |t|
      t.references :order, foreign_key: true
      t.string :references
      t.references :item, foreign_key: true
      t.integer :item_price
      t.integer :quantity

      t.timestamps
    end
  end
end
