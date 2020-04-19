class CreatePerks < ActiveRecord::Migration[6.0]
  def change
    create_table :perks do |t|
      t.string :name
      t.integer :rate
      t.text :context

      t.timestamps
    end
  end
end
