class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true, uniqueness: { case_sensitive: true }
  validates :body, presence: true
  validates :user_id, presence: true
end
