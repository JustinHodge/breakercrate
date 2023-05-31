class AddOutletToRoom < ActiveRecord::Migration[7.0]
  def change
    add_reference :outlets, :rooms, null: false, foreign_key: true
  end
end
