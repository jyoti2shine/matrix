class CreateTrainings < ActiveRecord::Migration[5.0]
  def change
    create_table :trainings do |t|
      t.string :name
      t.string :certification
      t.integer :number_of_day

      t.timestamps
    end
  end
end
