require 'test_helper'

class WeightRepTest < ActiveSupport::TestCase
  test "There must be Reps and Weight" do
    @reps = WeightRep.create()
    refute @reps.save
  end

  test "Reps and Weight has to be a number" do
    refute reps.create(numb_of_reps: "two hundred", amount_of_weight: "two hundred").valid?
    refute reps.create(numb_of_reps: true, amount_of_weight: true).valid?
  end

  test "Reps and Weight can not be a negative number" do
    refute reps.create(numb_of_reps: -200, amount_of_weight: -200).valid?
  end

  test "Reps and Weight can not be a decimal" do
    refute reps.create(numb_of_reps: 2.2, amount_of_weight: 2.2).valid?
  end
end
