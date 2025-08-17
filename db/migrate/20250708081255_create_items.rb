class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string  :item_name,       null: false
      t.text    :explanation,     null: false
      t.integer :category_id,     null: false
      t.integer :situation_id,    null: false
      t.integer :postage_id,      null: false
      t.integer :prefecture_id,   null: false
      t.integer :shipping_day_id, null: false
      t.integer :price,           null: false
      t.timestamps
    end
  end
end
