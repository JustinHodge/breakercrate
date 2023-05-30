class AddLengthToRoom < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :length, :integer
  end
end
