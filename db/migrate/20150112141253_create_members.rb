class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string  :name
      t.boolean :sex
      t.string  :phone
      t.string  :landline
      t.string  :address
      t.integer :balance
      t.string  :discount, default:  '100, 100, 100, 100'
      t.text    :annotate
    end
  end
end
