class Position < ApplicationRecord
  has_many :trainings, :through => :training_positions
  has_many :training_positions
end
