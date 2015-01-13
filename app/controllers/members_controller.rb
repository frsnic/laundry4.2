class MembersController < ApplicationController
  before_action :set_member, only: [:show, :edit, :update, :destroy]

  before_filter :authenticate_user!
  after_action :verify_authorized

  respond_to :html

  def index
    authorize Member
    @members = Member.all
    respond_with(@members)
  end

  def show
    authorize Member
    respond_with(@member)
  end

  def new
    @member = Member.new
    authorize Member
    respond_with(@member)
  end

  def edit
    authorize Member
  end

  def create
    authorize Member
    @member = Member.new(member_params)
    flash[:notice] = 'Member was successfully created.' if @member.save!
    respond_with(@member)
  end

  def update
    authorize Member
    @member.update(member_params)
    respond_with(@member)
  end

  def destroy
    authorize Member
    @member.destroy
    respond_with(@member)
  end

  private

    def set_member
      @member = Member.find(params[:id])
    end

    def member_params
      params.require(:member).permit(:name, :sex, :phone, :address, :balance, :discount, :annotate)
    end

end
