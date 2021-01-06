class ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def new
    @shop = Shop.new
  end

  def create
    Shop.create(shop_params)
  end

  private

  def shop_params
    params.require(:shop).permit(:name, :date, :content)
  end
end
