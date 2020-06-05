class Post < ApplicationRecord
  validates :text, presence: true
  validates :like, presence: true
  validates :weapon_id, presence: true
  validates :perk_id, presence: true
  has_many :post_likes, dependent: :destroy

  def self.search(key) #self.はUser.を意味する
    if key
      where(['text LIKE ?', "%#{key}%"]) #検索とuseanameの部分一致を表示。
    else
      all #全て表示させる
    end
  end
end
