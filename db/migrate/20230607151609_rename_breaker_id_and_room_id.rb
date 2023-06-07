class RenameBreakerIdAndRoomId < ActiveRecord::Migration[7.0]
  def change
    rename_column :outlets, :breakers_id, :breaker_id
    rename_column :outlets, :rooms_id, :room_id
  end
end
