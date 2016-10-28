class RemoveUsersColumn < ActiveRecord::Migration
  def change
    remove_column(:users, :sex)
    remove_column(:users, :phone)
    remove_column(:users, :landline)
    remove_column(:users, :address)
    remove_column(:users, :balance)
    remove_column(:users, :discount)
  end
end
