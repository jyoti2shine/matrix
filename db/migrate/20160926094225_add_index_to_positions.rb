class AddIndexToPositions < ActiveRecord::Migration[5.0]
  def change
    add_index :positions, :title
  end
end
