class InitTables < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer  :order_id
      t.integer  :cloth_id
      t.integer  :quantity
      t.timestamps
    end
    create_table :order_item_lists do |t|
      t.integer  :order_item_id
      t.string   :method
      t.integer  :price
      t.integer  :price_extra
      t.integer  :price_discount
      t.datetime :day_in
      t.datetime :day_done
      t.datetime :day_out
      t.string   :annotate
      t.timestamps
    end
  end
end
