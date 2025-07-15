# テーブル設計

## users テーブル

| Column                      | Type    | Options     |
| --------------------------- | ------- | ----------- |
| email                       | string  | null: false, unique: true |
| encrypted_password          | string  | null: false |
| nickname                    | text    | null: false |
| firstname                   | text    | null: false |
| lastname                    | text    | null: false |
| first_name_kana             | text    | null: false |
| last_name_kana              | text    | null: false |
| birth_date                  | integer | null: false |

## items テーブル

| Column                 | Type       | Options     |
| ---------------------- | ---------- | ----------- |
| image                  | binary     | null: false |
| item                   | text       | null: false |
| explanation            | text       | null: false |
| category               | text       | null: false |
| situation              | text       | null: false |
| postage                | text       | null: false |
| region                 | text       | null: false |
| shipping_day           | text       | null: false |
| price                  | integer    | null: false |
| user                   | references | null: false, foreign_key: true|

## comments テーブル

| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| content            | text       | null: false |
| item               | references | null: false, foreign_key: true |
| user               | references | null: false, foreign_key: true |

## orders テーブル

| Column               | Type          | Options     |
| -------------------- | ------------- | ----------- |
| post_code            | integer       | null: false |
| prefectures          | text          | null: false |
| municipalities       | text          | null: false |
| street_address       | text          | null: false |
| building_name        | text          |             |
| telephone_number     | integer       | null: false |
| user                 | references | null: false, foreign_key: true |