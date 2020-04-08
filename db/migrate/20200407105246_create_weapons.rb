class CreateWeapons < ActiveRecord::Migration[6.0]
  def change
    create_table :weapons do |t|
      t.string :name
      t.integer :attack
      t.integer :rate
      t.text :context

      t.timestamps
    end
  end
end
