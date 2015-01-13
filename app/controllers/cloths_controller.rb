class ClothsController < ApplicationController
  before_action :set_cloth, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @cloths = Cloth.all
    respond_with(@cloths)
  end

  def show
    respond_with(@cloth)
  end

  def new
    @cloth = Cloth.new
    respond_with(@cloth)
  end

  def edit
  end

  def create
    @cloth = Cloth.new(cloth_params)
    @cloth.save
    respond_with(@cloth)
  end

  def update
    @cloth.update(cloth_params)
    respond_with(@cloth)
  end

  def destroy
    @cloth.destroy
    respond_with(@cloth)
  end

  private
    def set_cloth
      @cloth = Cloth.find(params[:id])
    end

    def cloth_params
      params.require(:cloth).permit(:store_id, :name, :unit, :code, :price_dry, :price_wash, :price_iron, :price_else, :day_dry, :day_wash, :day_iron, :day_else)
    end
end
