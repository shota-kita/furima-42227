class Item < ApplicationRecord
  has_one_attached :image

  def item_params
    params.require(:item).permit(:content, :image).merge(user_id: current_user.id)
  end
end
