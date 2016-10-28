class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :description, :text
    add_column :users, :sex        , :boolean  
    add_column :users, :phone      , :text
    add_column :users, :landline   , :text
    add_column :users, :address    , :text
    add_column :users, :balance    , :integer 
    add_column :users, :discount   , :string      , default:  '100, 100, 100, 100'
  end
end
