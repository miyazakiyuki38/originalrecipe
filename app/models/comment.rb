class Comment < ApplicationRecord
  belongs_to :recipe  # tweetsテーブルとのアソシエーション
  belongs_to :user
end
