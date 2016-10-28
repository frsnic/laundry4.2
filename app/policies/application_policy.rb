class ApplicationPolicy
  attr_reader :current_user

  def initialize(current_user)
    @current_user = current_user
  end

  def is_manger?
    @current_user.manger? or @current_user.trial_manger? or @current_user.admin?
  end

end
