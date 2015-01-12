class MemberPolicy
  attr_reader :current_user, :model

  def initialize(current_user, model)
    @current_user = current_user
    @member = model
  end

  def index?
    @current_user.admin?
  end

  def show?
    @current_user.admin? or @current_user == @member
  end

  def new?
    @current_user.admin?
  end

  def edit?
    @current_user.admin?
  end

  def create?
    @current_user.admin?
  end

  def update?
    @current_user.admin?
  end

  def destroy?
    return false if @current_user == @member
    @current_user.admin?
  end

end
