class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :store_id
      t.integer :sum
      t.string  :annotate
      t.timestamps null: false
    end
  end
end
