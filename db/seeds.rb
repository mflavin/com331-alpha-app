# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Workout.destroy_all
WeightSet.destroy_all
WeightRep.destroy_all

@wOne = Workout.create!(
  workout_name: "Squats"
)

@wOneSets = WeightSet.create!(
  numb_of_sets: 3,
  workout: @wOne,
)

@wOneReps = WeightRep.create!(
  numb_of_reps: 12,
  amount_of_weight: 35,
  workout: @wOne,
)


@wTwo = Workout.create!(
  workout_name: "Bench Press"
)

@wTwoSets = WeightSet.create!(
  numb_of_sets: 4,
  workout: @wTwo,
)

@wTwoReps = WeightRep.create!(
  numb_of_reps: 8,
  amount_of_weight: 55,
  workout: @wTwo,
)


@wThree = Workout.create!(
  workout_name: "Skull Crushers"
)

@wThreeSets = WeightSet.create!(
  numb_of_sets: 5,
  workout: @wThree,
)

@wThreeReps = WeightRep.create!(
  numb_of_reps: 10,
  amount_of_weight: 30,
  workout: @wThree,
)
