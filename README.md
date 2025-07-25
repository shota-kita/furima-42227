# テーブル設計

## users テーブル

| Column                      | Type       | Options     |
| --------------------------- | ---------- | ----------- |
| email                       | string     | null: false, unique: true |
| encrypted_password          | string     | null: false |
| nickname                    | string     | null: false |
| first_name                  | string     | null: false |
| last_name                   | string     | null: false |
| first_name_kana             | string     | null: false |
| last_name_kana              | string     | null: false |
| birth_date                  | date       | null: false |

### Association

- has_many :items
- has_many :orders


## items テーブル

| Column                      | Type       | Options     |
| --------------------------- | ---------- | ----------- |
| item_name                   | string     | null: false |
| explanation                 | text       | null: false |
| category_id                 | integer    | null: false |
| situation_id                | integer    | null: false |
| postage_id                  | integer    | null: false |
| prefecture_id               | integer    | null: false |
| shipping_day_id             | integer    | null: false |
| price                       | integer    | null: false |
| user                        | references | null: false, foreign_key: true|

### Association

- belongs_to :user
- has_one    :order

## addresses テーブル

| Column               | Type             | Options     |
| -------------------- | ---------------- | ----------- |
| post_code            | string           | null: false |
| prefecture_id        | integer          | null: false |
| municipality         | string           | null: false |
| street_address       | string           | null: false |
| building_name        | string           |             |
| telephone_number     | string           | null: false |
| order                | references       | null: false, foreign_key: true |

### Association

- belongs_to :order

## orders テーブル

| Column               | Type             | Options     |
| -------------------- | ---------------- | ----------- |
| user                 | references       | null: false, foreign_key: true|
| item                 | references       | null: false, foreign_key: true|

### Association

- belongs_to :user
- belongs_to :item
- has_one    :address