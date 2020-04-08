class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :text
      t.integer :like

      t.timestamps
    end
  end
end
