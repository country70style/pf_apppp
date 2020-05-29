class Weapon < ApplicationRecord
  has_many :weapon_likes, dependent: :destroy
end
