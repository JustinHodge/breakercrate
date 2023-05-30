class AddSlotToBreaker < ActiveRecord::Migration[7.0]
  def change
    add_column :breakers, :slot, :integer
  end
end
