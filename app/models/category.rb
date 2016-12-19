class Category < ApplicationRecord
  has_many :posts, through: :tags
end
