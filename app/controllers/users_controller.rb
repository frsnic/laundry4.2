class UsersController < ApplicationController
  before_filter :authenticate_user!
  after_action :verify_authorized

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
    #respond_to :html
    #respond_with(@user)
    render :text => "fr"
  end

  def edit
  end

  def create
    @user = User.new(User_params)
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
      params[:user]
    end

end
