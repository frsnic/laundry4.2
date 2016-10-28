class AddDiscountToMembers < ActiveRecord::Migration
  def change
    add_column :members, :discount_dry , :integer, default: 100, after: :balance
    add_column :members, :discount_wash, :integer, default: 100, after: :discount_dry
    add_column :members, :discount_iron, :integer, default: 100, after: :discount_wash
    add_column :members, :discount_else, :integer, default: 100, after: :discount_iron
  end
end
