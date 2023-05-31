class AddOutletToBreaker < ActiveRecord::Migration[7.0]
  def change
    add_reference :outlets, :breakers, null: false, foreign_key: true
  end
end
