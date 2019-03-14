# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Week.destroy_all
Day.destroy_all
Weight.destroy_all

@weekOne = Week.create!(
  counting_week: "First Week"
)

@dayOne = Day.create!(
  day_of_week: "Monday",
  week: @weekOne
)

@dayTwo = Day.create!(
  day_of_week: "Tuesday",
  week: @weekOne
)

@dayThree = Day.create!(
  day_of_week: "Wednesday",
  week: @weekOne
)

@weightsOne = Weight.create!(
  workout: "Squats",
  amount_of_weight: "125lbs",
  day: @dayOne
)

@weightsTwo = Weight.create!(
  workout: "Pushups",
  amount_of_weight: "N/A",
  day: @dayOne
)

@weightsThree = Weight.create!(
  workout: "Bench Press",
  amount_of_weight: "55lbs",
  day: @dayOne
)

@weightsDayTwo = Weight.create!(
  workout: "Skullcrushers",
  amount_of_weight: "40lbs",
  day: @dayTwo
)

@weightsDayThree = Weight.create!(
  workout: "Curls",
  amount_of_weight: "25lbs",
  day: @dayThree
)
