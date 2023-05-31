class RemoveRoomIdFromOutlets < ActiveRecord::Migration[7.0]
  def change
    remove_column :outlets, :room_id, :string
  end
end
