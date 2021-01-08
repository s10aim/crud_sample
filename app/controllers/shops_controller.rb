class ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
  end

  def new
    @shop = Shop.new
  end

  def create
    Shop.create(shop_params)
  end

  def edit
    @shop = Shop.find(params[:id])
  end

  def update
    shop = Shop.find(params[:id])
    shop.update!(shop_params)
  end

  def destroy
    shop = Shop.find(params[:id])
    shop.destroy
  end

  private

  def shop_params
    params.require(:shop).permit(:name, :date, :content)
  end
end
