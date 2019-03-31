class Workout < ApplicationRecord
  validates :workout_name, presence: true

  has_one :weight_set

  def numb_of_sets=(numb_of_sets)
    WeightSet.update(self.id, numb_of_sets: numb_of_sets)
  end

  def numb_of_reps=(numb_of_reps)
    WeightRep.update(self.id, numb_of_reps: numb_of_reps)
  end

  def amount_of_weight=(amount_of_weight)
    WeightRep.update(self.id, amount_of_weight: amount_of_weight)
  end

  def numb_of_sets
    self.weight_set ? self.weight_set.numb_of_sets : nil
  end

  def numb_of_reps
    self.weight_set.weight_rep ? self.weight_set.weight_rep.numb_of_reps : nil
  end

  def amount_of_weight
    self.weight_set.weight_rep ? self.weight_set.weight_rep.amount_of_weight : nil
  end

end
