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

## events テーブル

| Column        | Type     | Options      |
| ------------- | -------- | ------------ |
| seed_date     | datetime | null: false  |
| planting_date | datetime | null: false  |
| harvest_date  | datetime | null: false  |
| seeding_date  | datetime | null: false  |
| produce_id    | integer  | null: false  |

### Association

- belongs_to :user
- 

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