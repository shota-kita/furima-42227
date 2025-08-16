class Item < ApplicationRecord
  validates :item_name,       presence: true
  validates :explanation,     presence: true 
  validates :category_id, numericality:     { other_than: 1 , message: "can't be blank"} 
  validates :situation_id, numericality:    { other_than: 1 , message: "can't be blank"} 
  validates :postage_id, numericality:      { other_than: 1 , message: "can't be blank"} 
  validates :prefecture_id, numericality:   { other_than: 1 , message: "can't be blank"} 
  validates :shipping_day_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :price, presence: true, inclusion: {in: 300..9999999}
  has_one_attached :image
  validates :image,           presence: true
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :situation
  belongs_to :postage
  belongs_to :prefecture
  belongs_to :shipping
end
