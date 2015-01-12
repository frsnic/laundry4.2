class RemoveUsersAnnotate < ActiveRecord::Migration
  def change
    remove_column(:users, :annotate)
  end
end
