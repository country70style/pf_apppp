class Post < ApplicationRecord
  validates :text, presence: true
  validates :like, presence: true
end
