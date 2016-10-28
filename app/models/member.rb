class Member < ActiveRecord::Base
  belongs_to :store
  has_many   :user_members
  has_many   :users, :through => :user_members

  validates_presence_of :name
  validates_presence_of :phone
  validates_inclusion_of :sex, :in => [true, false]

end
