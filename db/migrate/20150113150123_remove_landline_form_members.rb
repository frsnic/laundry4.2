class RemoveLandlineFormMembers < ActiveRecord::Migration
  def change
    remove_column(:members, :landline)
  end
end
