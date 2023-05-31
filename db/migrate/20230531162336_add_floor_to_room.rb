class AddFloorToRoom < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :floor, :integer
  end
end
