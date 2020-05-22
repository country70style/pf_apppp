class Weapon < ApplicationRecord
  has_many :likes, dependent: :destroy
end
