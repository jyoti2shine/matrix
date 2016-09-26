class Training < ApplicationRecord
  has_many :positions, :through => :training_positions
  has_many :training_positions

  validates :name, presence: true
  validates :name, uniqueness: true
end
