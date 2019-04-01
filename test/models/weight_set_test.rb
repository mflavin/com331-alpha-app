require 'test_helper'

class WeightSetTest < ActiveSupport::TestCase
  test "There must be Sets" do
    @sets = WeightSet.create()
    refute @sets.save
  end

  test "Sets has to be a number" do
    refute WeightSet.create(numb_of_sets: "two hundred").valid?
    refute WeightSet.create(numb_of_sets: true).valid?
  end

  test "Sets can not be a negative number" do
    refute WeightSet.create(numb_of_sets: -200).valid?
  end

  test "Sets can not be a decimal" do
    refute WeightSet.create(numb_of_sets: 2.2).valid?
  end

end
