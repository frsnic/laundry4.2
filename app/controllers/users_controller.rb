class UsersController < ApplicationController
  before_filter :authenticate_user!
  after_action :verify_authorized

  respond_to :html

  def index
    @users = User.all
    authorize User
  end

  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def new
    @user = User.new
    authorize User
  end

  def edit
  end

  def registrations
    authorize User
    @user = User.new(user_params)
    flash[:notice] = 'User was successfully created.' if @user.save
    respond_with(@user)
  end

  def update
    @user = User.find(params[:id])
    authorize @user
    if @user.update_attributes(secure_params)
      redirect_to users_path, :notice => "User updated."
    else
      redirect_to users_path, :alert => "Unable to update user."
    end
  end

  def destroy
    user = User.find(params[:id])
    authorize user
    user.destroy
    redirect_to users_path, :notice => "User deleted."
  end

  private

    def secure_params
      params.require(:user).permit(:role)
    end

    def user_params
      params.require(:user).permit(:name, :password, :phone)
    end

end
