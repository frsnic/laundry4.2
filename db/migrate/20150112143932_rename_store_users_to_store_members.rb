class RenameStoreUsersToStoreMembers < ActiveRecord::Migration
  def change
    rename_table(:store_users, :store_members)
  end
end
