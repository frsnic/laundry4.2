class InitTables < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string   :name
      t.string   :phone
      t.string   :address
      t.datetime :start_time
      t.datetime :end_time
      t.string   :annotate
      t.timestamps
    end
    create_table :store_users do |t|
      t.integer  :store_id
      t.integer  :user_id
      t.timestamps
    end
    create_table :cloths do |t|
      t.integer  :store_id
      t.string   :name
      t.string   :unit
      t.string   :code
      t.integer  :price_dry
      t.integer  :price_wash
      t.integer  :price_iron
      t.integer  :price_else
      t.integer  :day_dry
      t.integer  :day_wash
      t.integer  :day_iron
      t.integer  :day_else
      t.timestamps
    end
    create_table :orders do |t|
      t.integer  :user_id
      t.integer  :store_id
      t.integer  :sum
      t.string     :annotate
      t.timestamps
    end
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
