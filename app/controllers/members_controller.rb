class MembersController < ApplicationController
  before_action :is_manger?
  before_action :set_member, only: [:show, :edit, :update, :destroy]

  before_filter :authenticate_user!
  after_action :verify_authorized

  respond_to :html

  def index
    @members = Member.where(:store_id => session[:store_id])
    respond_with(@members)
  end

  def show
    respond_with(@member)
  end

  def new
    @member = Member.new
    respond_with(@member)
  end

  def edit
  end

  def create
    @member = Member.new(member_params)
    begin
      @member.store_id = session[:store_id]
      flash[:notice] = 'Member was successfully created.' if @member.save!
    rescue => e
      logger.error "== #{e.message} =="
    end
    respond_with(@member)
  end

  def update
    @member.update(member_params)
    respond_with(@member)
  end

  def destroy
    @member.destroy
    respond_with(@member)
  end

  private

    def is_manger?
      authorize Member, :is_manger?
    end

    def set_member
      @member = Member.find(params[:id])
    end

    def member_params
      params.require(:member).permit(:name, :sex, :phone, :address, :balance, :discount, :annotate)
    end

end
