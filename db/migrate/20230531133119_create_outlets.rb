class CreateOutlets < ActiveRecord::Migration[7.0]
  def change
    create_table :outlets do |t|
      t.string :type
      t.boolean :is_gfci
      t.string :room_id
      t.string :integer
      t.integer :breaker_id
      t.integer :location_x
      t.integer :location_y
      t.integer :location_z

      t.timestamps
    end
  end
end
