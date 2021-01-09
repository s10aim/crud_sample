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
    shop = Shop.create!(shop_params)
    redirect_to shop
  end

  def edit
  end

  def update
    @shop.update!(shop_params)
    redirect_to @shop
  end

  def destroy
    @shop.destroy!
    redirect_to root_path
  end

  private

  def set_shop
    @shop = Shop.find(params[:id])
  end

  def shop_params
    params.require(:shop).permit(:name, :date, :content)
  end
end
