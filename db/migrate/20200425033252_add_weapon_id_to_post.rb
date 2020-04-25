class AddWeaponIdToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :weapon_id, :integer
  end
end
