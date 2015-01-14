class Member < ActiveRecord::Base
  validates :name,  :presence => true
  validates :phone, :presence => true
  validates :sex,   :presence => true

end
