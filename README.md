## users テーブル

| Column              | Type   | Options                   |
| ------------------- | ------ | ------------------------- |
| nickname            | string | null: false               |
| email               | string | null: false, unique: true | 
| encrypted_password  | string | null: false               |

### Association
- has_many :goals

## goals テーブル

| Column           | Type      | Options                        |
| ---------------- | --------- | ------------------------------ |
| user             | reference | null: false, foreign_key: true |
| title            | string    | null: false                    |
| content          | text      | null: false                    |
| deadline         | date      | null: false                                     |

### Association
- belongs_to :user