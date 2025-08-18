class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  def index
    @items = Item.all.order('created_at DESC')
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to '/'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
    return if current_user.id == @item.user_id

    redirect_to '/'
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to '/'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def item_params
    params.require(:item).permit(:image, :item_name, :explanation, :category_id, :situation_id, :postage_id, :prefecture_id,
                                 :shipping_day_id, :price).merge(user_id: current_user.id)
  end
end
