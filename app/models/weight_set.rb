class WeightSet < ApplicationRecord
  belongs_to :workout
  has_many :weight_reps
end
