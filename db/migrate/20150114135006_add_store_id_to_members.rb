class AddStoreIdToMembers < ActiveRecord::Migration
  def change
    add_column :members, :store_id, :integer, after: :id
  end
end
