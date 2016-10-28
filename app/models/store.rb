class Store < ActiveRecord::Base
  has_many :store_users
  has_many :users, :through => :store_users
  has_many :members

end
