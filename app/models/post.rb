class Post < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 } # maximum 140 characters
  default_scope -> { order(created_at: :desc) } # newests posts first
end
