class CreateTrainingPositions < ActiveRecord::Migration[5.0]
  def change
    create_table :training_positions do |t|
      t.integer :position_id
      t.integer :training_id

      t.timestamps
    end
  end
end
