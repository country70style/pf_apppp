class Weapon < ApplicationRecord
  has many :likes, dependent: :destroy
end
