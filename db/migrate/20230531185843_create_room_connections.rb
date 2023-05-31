class CreateRoomConnections < ActiveRecord::Migration[7.0]
  def change
    create_table :room_connections do |t|
      t.references :room_a_id, null: false, foreign_key: {to_table: :rooms}
      t.references :room_b_id, null: false, foreign_key: {to_table: :rooms}
      t.integer :room_a_x_position
      t.integer :room_b_x_postion
      t.integer :room_a_y_position
      t.integer :room_b_y_position

      t.timestamps
    end
  end
end
