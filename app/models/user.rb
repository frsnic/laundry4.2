class User < ActiveRecord::Base
  enum role: [:user, :vip, :admin, :manger, :trial_manger]
  after_initialize :set_default_role, :if => :new_record?

  has_many :orders
  has_many :store_users
  has_many :stores, :through => :store_users
  has_many :user_members
  has_many :members, :through => :user_members


  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
