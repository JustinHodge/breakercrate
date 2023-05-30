class CreateBreakers < ActiveRecord::Migration[7.0]
  def change
    create_table :breakers do |t|
      t.integer :amperage
      t.boolean :status

      t.timestamps
    end
  end
end
