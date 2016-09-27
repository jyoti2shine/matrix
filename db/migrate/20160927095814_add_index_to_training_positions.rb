class AddIndexToTrainingPositions < ActiveRecord::Migration[5.0]
  def change
    add_index :training_positions, [:position_id, :training_id ], :unique => true
  end
end
