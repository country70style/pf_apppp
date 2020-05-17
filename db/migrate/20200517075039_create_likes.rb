class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.references :weapon, null: false, foreign_key: true
      t.references :perk, null: false, foreign_key: true
      t.string :ip
      t.timestamps
    end
  end
end
