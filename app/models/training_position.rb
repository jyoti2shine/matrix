class TrainingPosition < ApplicationRecord
  belongs_to :position
  belongs_to :training
  validates :training_id, uniqueness: {scope: :position_id}
end
