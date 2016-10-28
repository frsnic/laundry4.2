class RenameUserDescription < ActiveRecord::Migration
  def change
    rename_column(:users, :description, :annotate)
  end
end
