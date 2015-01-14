class RemoveDiscountFromMembers < ActiveRecord::Migration
  def change
    remove_column(:members, :discount)
  end
end
