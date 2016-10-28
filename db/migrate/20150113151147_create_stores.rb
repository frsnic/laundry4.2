class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string   :name
      t.string   :phone
      t.string   :address
      t.datetime :start_time
      t.datetime :end_time
      t.string   :annotate
      t.timestamps null: false
    end
  end
end
