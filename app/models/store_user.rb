class StoreUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :store

  validates_uniqueness_of :user_id, :scope => :store_id

end
