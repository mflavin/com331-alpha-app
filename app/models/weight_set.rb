class WeightSet < ApplicationRecord
  validates :numb_of_sets, presence: true
  validates :numb_of_sets, numericality: {greater_than_or_equal_to: 0, only_integer: true}

  belongs_to :workout
  has_one :weight_rep
end
