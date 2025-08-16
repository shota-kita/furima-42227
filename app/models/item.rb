class Item < ApplicationRecord
  validates :item_name,       presence: true
  validates :explanation,     presence: true 
  validates :category_id, numericality:     { other_than: 1 , message: "can't be blank"} 
  validates :situation_id, numericality:    { other_than: 1 , message: "can't be blank"} 
  validates :postage_id, numericality:      { other_than: 1 , message: "can't be blank"} 
  validates :prefecture_id, numericality:   { other_than: 1 , message: "can't be blank"} 
  validates :shipping_day_id, numericality: { other_than: 1 , message: "can't be blank"}
  with_options presence: true, format: { with: /\A[0-9]+\z/, message: '半角数値を使用してください',}do
    validates :price
  end
  has_one_attached :image
  validates :image,           presence: true
  validates_inclusion_of :price, in:300..9999999, message: "Price is out of range"
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :situation
  belongs_to :postage
  belongs_to :prefecture
  belongs_to :shipping
end
