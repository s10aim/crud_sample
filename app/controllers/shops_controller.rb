class ShopsController < ApplicationController
  before_action :set_shop, only: %i[show edit update destroy]

  def index
    @shops = Shop.all
  end

  def show
  end

  def new
    @shop = Shop.new
  end

  def create
    Shop.create(shop_params)
  end

  def edit
  end

  def update
    @shop.update!(shop_params)
  end

  def destroy
    @shop.destroy
  end

  private

  def set_shop
    @shop = Shop.find(params[:id])
  end

  def shop_params
    params.require(:shop).permit(:name, :date, :content)
  end
end
