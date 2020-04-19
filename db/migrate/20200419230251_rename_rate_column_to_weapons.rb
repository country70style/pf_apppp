class RenameRateColumnToWeapons < ActiveRecord::Migration[6.0]
  def change
    rename_column :weapons, :rate, :fire_rate
  end
end
