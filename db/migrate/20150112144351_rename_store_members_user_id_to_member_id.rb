class RenameStoreMembersUserIdToMemberId < ActiveRecord::Migration
  def change
    rename_column(:store_members, :user_id, :member_id)
  end
end
