class AddHeightToRoom < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :height, :integer
  end
end
