class AddGroupToClotothes < ActiveRecord::Migration
  def change
    add_column :cloths, :group, :integer, after: :id
    add_column :cloths, :order, :integer, after: :code
  end
end
