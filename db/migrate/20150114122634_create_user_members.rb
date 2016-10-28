class CreateUserMembers < ActiveRecord::Migration
  def change
    create_table :user_members do |t|
      t.integer :user_id
      t.integer :member_id
      t.timestamps null: false
    end
  end
end
