class AddEmailToStores < ActiveRecord::Migration
  def change
    add_column :stores, :email, :string, after: :address
  end
end
