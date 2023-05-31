class AddLabelToRoom < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :label, :string
  end
end
