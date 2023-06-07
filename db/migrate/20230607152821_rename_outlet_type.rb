class RenameOutletType < ActiveRecord::Migration[7.0]
  def change
    rename_column :outlets, :type, :description
  end
end
