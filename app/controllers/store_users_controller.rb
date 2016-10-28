class StoreUsersController < ApplicationController
  before_action :set_store_user, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @store_users = StoreUser.all
    respond_with(@store_users)
  end

  def show
    respond_with(@store_user)
  end

  def new
    @store_user = StoreUser.new
    respond_with(@store_user)
  end

  def edit
  end

  def create
    @store_user = StoreUser.new(store_user_params)
    @store_user.save
    respond_with(@store_user)
  end

  def update
    @store_user.update(store_user_params)
    respond_with(@store_user)
  end

  def destroy
    @store_user.destroy
    respond_with(@store_user)
  end

  private
    def set_store_user
      @store_user = StoreUser.find(params[:id])
    end

    def store_user_params
      params.require(:store_user).permit(:store_id, :user_id)
    end
end
