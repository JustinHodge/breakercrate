class AddLabelToBreaker < ActiveRecord::Migration[7.0]
  def change
    add_column :breakers, :label, :string
  end
end
