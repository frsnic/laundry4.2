class ChangeUserColumnPosition < ActiveRecord::Migration
  def change
    change_column :users, :sex     , :boolean, after: :email
    change_column :users, :phone   , :text   , after: :sex
    change_column :users, :landline, :text   , after: :phone
    change_column :users, :address , :text   , after: :landline
    change_column :users, :balance , :integer, after: :address
    change_column :users, :discount, :string , after: :balance , default:  '100, 100, 100, 100'
    change_column :users, :annotate, :text   , after: :discount
  end
end
