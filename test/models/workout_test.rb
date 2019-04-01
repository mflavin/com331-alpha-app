require 'test_helper'

class WorkoutTest < ActiveSupport::TestCase
  test "Workout must have a name" do
    @workout = Workout.create()
    refute @workout.save
  end

  test "Workout must be a string" do
    refute Workout.create(workout_name: 2).valid?
    refute Workout.create(workout_name: 2.2).valid?
    refute Workout.create(workout_name: -200).valid?
    refute Workout.create(workout_name: true).valid?
  end

end
