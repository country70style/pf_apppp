class Post < ApplicationRecord
  validates :text, presence: true
  validates :like, presence: true
  validates :weapon_id, presence: true
  validates :perk_id, presence: true
  has_many :post_likes, dependent: :destroy
  def self.search(search)
    return Post.all unless search
    Post.where(['content LIKE ?', "%#{search}%"])
  end
end
