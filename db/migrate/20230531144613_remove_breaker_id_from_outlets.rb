class RemoveBreakerIdFromOutlets < ActiveRecord::Migration[7.0]
  def change
    remove_column :outlets, :breaker_id, :integer
  end
end
