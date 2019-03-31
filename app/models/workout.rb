class Workout < ApplicationRecord
  validates :workout_name, presence: true

  has_one :weight_set
end
