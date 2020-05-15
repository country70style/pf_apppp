class Post < ApplicationRecord
  validates :text, presence: true
  validates :like, presence: true
  validates :weapon_id, presence: true
  validates :perk_id, presence: true
end
