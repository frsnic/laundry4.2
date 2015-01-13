class CreateCloths < ActiveRecord::Migration
  def change
    create_table :cloths do |t|
      t.integer :store_id
      t.string  :name
      t.string  :unit
      t.string  :code
      t.integer :price_dry
      t.integer :price_wash
      t.integer :price_iron
      t.integer :price_else
      t.integer :day_dry
      t.integer :day_wash
      t.integer :day_iron
      t.integer :day_else
      t.timestamps null: false
    end
  end
end
