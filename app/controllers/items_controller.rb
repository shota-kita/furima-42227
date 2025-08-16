class ItemsController < ApplicationController

  def index

  end

  def new
    authenticate_user!
    @item = Item.new
  end

  def create
    @item = Item.create(item_params)
    if @item.save
      redirect_to '/'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def item_params
    params.require(:item).permit(:image, :item_name, :explanation, :category_id, :situation_id, :postage_id, :prefecture_id, :shipping_day_id, :price)
  end
  
end
