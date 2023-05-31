class RemoveIntegerFromOutlets < ActiveRecord::Migration[7.0]
  def change
    remove_column :outlets, :integer, :string
  end
end
