class UserMember < ActiveRecord::Base
  belongs_to :user
  belongs_to :member

  validates_uniqueness_of :user_id, :scope => :member_id

end
