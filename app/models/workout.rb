class Workout < ApplicationRecord
  validates :workout_name, presence: true

  has_one :weight_set
  has_one :weight_rep

  def numb_of_sets=(numb_of_sets)
    self.build_weight_set unless self.weight_set
    self.weight_set.update_attributes(numb_of_sets: numb_of_sets)
  end

  def numb_of_reps=(numb_of_reps)
    self.build_weight_rep unless self.weight_rep
    self.weight_rep.update_attributes(numb_of_reps: numb_of_reps)
  end

  def amount_of_weight=(amount_of_weight)
    self.build_weight_rep unless self.weight_rep
    self.weight_rep.update_attributes(amount_of_weight: amount_of_weight)
  end

  def numb_of_sets
    self.weight_set ? self.weight_set.numb_of_sets : nil
  end

  def numb_of_reps
    self.weight_rep ? self.weight_rep.numb_of_reps : nil
  end

  def amount_of_weight
    self.weight_rep ? self.weight_rep.amount_of_weight : nil
  end

end
