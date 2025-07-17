# テーブル設計

## users テーブル

| Column                      | Type       | Options     |
| --------------------------- | ---------- | ----------- |
| email                       | string     | null: false, unique: true |
| encrypted_password          | string     | null: false |
| nickname                    | string     | null: false |
| firstname                   | string     | null: false |
| lastname                    | string     | null: false |
| first_name_kana             | string     | null: false |
| last_name_kana              | string     | null: false |
| birth_date                  | date       | null: false |

### Association

- has_many :items
- has_many :comments
- has_many :orders


## items テーブル

| Column                      | Type       | Options     |
| --------------------------- | ---------- | ----------- |
| item                        | text       | null: false |
| explanation                 | text       | null: false |
| category                    | text       | null: false |
| situation                   | text       | null: false |
| postage                     | text       | null: false |
| prefectures                 | text       | null: false |
| shipping_day                | text       | null: false |
| price                       | integer    | null: false |
| user                        | references | null: false, foreign_key: true|

### Association

- belongs_to :users
- has_many   :comments
- has_one    :addresses
- has_one    :orders

## comments テーブル

| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| content            | text       | null: false |
| item               | references | null: false, foreign_key: true |
| user               | references | null: false, foreign_key: true |

### Association

- belongs_to :users
- belongs_to :items

## addresses テーブル

| Column               | Type             | Options     |
| -------------------- | ---------------- | ----------- |
| post_code            | integer          | null: false |
| prefectures          | text             | null: false |
| municipalities       | string           | null: false |
| street_address       | string           | null: false |
| building_name        | string           |             |
| telephone_number     | string           | null: false |
| user                 | references       | null: false, foreign_key: true |

### Association

- has_one :users

## orders テーブル

| Column               | Type             | Options     |
| -------------------- | ---------------- | ----------- |
| user                 | references       | null: false, foreign_key: true|
| item                 | references       | null: false, foreign_key: true|

### Association

- belongs_to :user
- has_one    :items