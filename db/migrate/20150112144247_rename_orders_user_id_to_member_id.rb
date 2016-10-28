class RenameOrdersUserIdToMemberId < ActiveRecord::Migration
  def change
    rename_column(:orders, :user_id, :member_id)
  end
end
