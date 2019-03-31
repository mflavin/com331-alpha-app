class Workout < ApplicationRecord
  validates :workout_name, presence: true

  has_many :weight_sets
end
