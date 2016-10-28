class ChangeUserNameAndRolePosition < ActiveRecord::Migration
  def change
    change_column :users, :name, :string , after: :id
    change_column :users, :role, :integer, after: :name
  end
end
