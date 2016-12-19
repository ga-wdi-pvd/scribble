#
class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :author, presence: true
  validates :title, presence: true, length: { minimum: 5 }
  validates :body, presence: true
end
