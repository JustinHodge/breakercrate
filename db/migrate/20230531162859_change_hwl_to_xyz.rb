class ChangeHwlToXyz < ActiveRecord::Migration[7.0]
  def change
    rename_column :rooms, :width, :x_size
    rename_column :rooms, :length, :y_size
    rename_column :rooms, :height, :z_size
  end
end
