class WeightRep < ApplicationRecord
    validates :numb_of_reps, :amount_of_weight, presence: true
    validates :numb_of_reps, :amount_of_weight, numericality: {greater_than_or_equal_to: 0, only_integer: true}

  belongs_to :weight_set
end
