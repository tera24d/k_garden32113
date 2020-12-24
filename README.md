# README

# DB設計

## users テーブル

| Column             | Type    | Options      |
| ------------------ | ------- | ------------ |
| email              | string  | null: false  |
| password           | string  | null: false  |
| nickname           | string  | unique: true |
| sex_id             | integer | null: false  |
| prefecture_id      | integer | null: false  |

### Association

- has_many :room_users
- has_many :rooms, through: room_users
- has_many :events
- has_many :messages
- belongs_to :sex
- belongs_to :prefecture

## events テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| user_id    | references | null: false, foreign_key: true |
| produce_id | integer    | null: false                    |
| ridge_id   | integer    | null: false                    |

### Association

- belongs_to :user
- belongs_to :produce
- belongs_to :ridge

## relationships テーブル

| Column       | Type    | Options           |
| ------------ | ------- | ----------------- |
| follower_id  | integer | foreign_key: true |
| following_id | integer | foreign_key: true |

### Association

- 
- 

## rooms テーブル

| Column | Type    | Options      |
| ------ | ------- | ------------ |
| name   | string  | null: false  |

### Association

- has_many :room_users
- has_many :users, through: room_users
- has_many :messages

## room_users テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user_id | references | null: false, foreign_key: true |
| room_id | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | text       |                                |
| user_id | references | null: false, foreign_key: true |
| room_id | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user