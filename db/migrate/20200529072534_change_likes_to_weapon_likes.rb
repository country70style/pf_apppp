class ChangeLikesToWeaponLikes < ActiveRecord::Migration[6.0]
  def change
    rename_table :likes, :weapon_likes
  end
end
