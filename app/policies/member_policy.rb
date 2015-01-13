class MemberPolicy
  attr_reader :current_user, :model

  def initialize(current_user, model)
    @current_user = current_user
    @member = model
  end

  def index?
    @current_user.manger? or @current_user.trial_manger? or @current_user.admin?
  end

  def show?
    @current_user.manger? or @current_user.trial_manger? or @current_user.admin?
  end

  def new?
    @current_user.manger? or @current_user.trial_manger? or @current_user.admin?
  end

  def edit?
    @current_user.manger? or @current_user.trial_manger? or @current_user.admin?
  end

  def create?
    @current_user.manger? or @current_user.trial_manger? or @current_user.admin?
  end

  def update?
    @current_user.manger? or @current_user.trial_manger? or @current_user.admin?
  end

  def destroy?
    @current_user.manger? or @current_user.trial_manger? or @current_user.admin?
  end

end
