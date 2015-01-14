class ChangeStoresTime < ActiveRecord::Migration
  def change
    change_column(:stores, :start_time, :time)
    change_column(:stores, :end_time  , :time)
  end
end
